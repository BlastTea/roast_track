part of 'services.dart';

/// Usage:
/// ```
/// try {
///   Response response = await ApiHelper.post(
///     '/api/endpoint',
///     body: {
///       'message': 'Hello World',
///     },
///   );
/// } catch (e) {
///   debugPrint(e.toString());
///   ApiHelper.handleError(e);
/// }
/// ```
class ApiHelper {
  static String url = 'https://dev-roasttrack.simaport.net';

  static const String _keyToken = 'token';
  static const String _keyCurrentUser = 'current_user';

  static Future<Map<String, String>> _getHeaders({bool ignoreAuthorization = false, bool isMultpartFormData = false}) async => {
        if (!ignoreAuthorization) 'Authorization': 'Bearer ${await _getToken()}',
        'Access-Control-Allow-Origin': '*',
        'Accept': 'application/json',
        'Content-Type': isMultpartFormData ? 'multipart/form-data' : 'application/json',
      };

  static Future<String?> _getToken() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    String? token = sharedPref.getString(_keyToken);

    if (token == null) throw 'Session is expired';

    return token;
  }

  static http.StreamedResponse _onRequestTimeout() => http.StreamedResponse(
      Stream.fromIterable(
        [
          json.encode({'message': 'Request Timeout'}).codeUnits,
        ],
      ),
      408);

  static Future<dynamic> _request({
    required String method,
    required Uri uri,
    Map<String, dynamic>? body,
    bool ignoreAuthorization = false,
    bool decode = true,
    Duration? timeout,
  }) async {
    http.Request request = http.Request(method, uri);
    debugPrint('(http request) : $method ${request.url} ${request.headers} $body');
    request.headers.addAll(await _getHeaders(ignoreAuthorization: ignoreAuthorization));
    Map<String, dynamic> effectiveBody = {};
    if (body != null) effectiveBody.addAll(body);

    if (effectiveBody.isNotEmpty) request.body = json.encode(effectiveBody);

    http.StreamedResponse response;
    if (timeout == null) {
      response = await request.send();
    } else {
      response = await request.send().timeout(timeout, onTimeout: _onRequestTimeout);
    }

    dynamic responseString = !decode && (response.statusCode > 199 && response.statusCode < 300) ? await response.stream.toBytes() : await response.stream.bytesToString();

    debugPrint('(http response) : $method ${request.url} ${response.statusCode} ${request.headers} $body => $responseString');

    if (!(response.statusCode > 199 && response.statusCode < 300) && (responseString.contains('<!doctype html>') || responseString.contains('<!DOCTYPE html>'))) throw responseString;

    if (!(response.statusCode > 199 && response.statusCode < 300)) throw json.decode(responseString);

    if (!decode) return responseString;

    return json.decode(responseString);
  }

  static Future<dynamic> _requestMultipart({
    required String method,
    required Uri uri,
    Map<String, String>? fields,
    List<http.MultipartFile>? files,
    Duration? timeout,
  }) async {
    var request = http.MultipartRequest(method, uri);
    request.headers.addAll(await _getHeaders(isMultpartFormData: true));
    if (files != null) request.files.addAll(files);
    if (fields != null) request.fields.addAll(fields);

    debugPrint('(http request) : ${request.method} ${request.headers} ${request.fields}');

    http.StreamedResponse response;
    if (timeout == null) {
      response = await request.send();
    } else {
      response = await request.send().timeout(timeout, onTimeout: _onRequestTimeout);
    }

    dynamic responseString = await response.stream.bytesToString();

    debugPrint('(http response) : $method ${request.url} ${response.statusCode} ${request.headers} $fields => $responseString');

    if (!(response.statusCode > 199 && response.statusCode < 300)) throw json.decode(responseString);

    return json.decode(responseString);
  }

  static Future<void> signIn({
    required String username,
    required String password,
  }) async {
    dynamic response = await post(
      '/api/v1/sign-in',
      body: {
        'username': username,
        'password': password,
      },
      ignoreAuthorization: true,
    );

    String token = response['token'];

    currentUser = User.fromJson(response['user']);

    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    await sharedPref.setString(_keyToken, token);
    await sharedPref.setString(_keyCurrentUser, jsonEncode(currentUser!.toJson()));
  }

  static Future<void> signOut() async {
    try {
      await post('/api/v1/sign-out');
    } catch (e) {
      // Ignored, really
    }

    MyApp.homeBloc.add(SetHomeToInitial());
    MyApp.orderBloc.add(SetOrderToInitial());
    MyApp.roasteryBloc.add(SetRoasteryToInitial());
    MyApp.roastingBloc.add(SetRoastingToInitial());
    MyApp.roastingResultBloc.add(SetRoastingResultToInitial());
    MyApp.resultBloc.add(SetResultToInitial());

    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    sharedPref.remove(_keyToken);
    sharedPref.remove(_keyCurrentUser);
    sharedPref.remove(keySelectedCompanyId);

    currentUser = null;

    while (NavigationHelper.canGoBack()) {
      NavigationHelper.back();
    }
    NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const SignInPage()));
  }

  static Future<bool> signInWithToken() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    if (sharedPref.getString(_keyToken) == null) return false;

    currentUser = User.fromJson(jsonDecode(sharedPref.getString(_keyCurrentUser)!));

    return true;
  }

  static Future<dynamic> get(String path, {Map<String, dynamic>? body, bool ignoreAuthorization = false}) => _request(method: 'GET', uri: Uri.parse('$url$path'), body: body, ignoreAuthorization: ignoreAuthorization);

  static Future<dynamic> getBytesUri(Uri uri, {Duration? timeout}) => _request(method: 'GET', uri: uri, decode: false, ignoreAuthorization: true, timeout: timeout);

  static Future<dynamic> post(String path, {Map<String, dynamic>? body, bool ignoreAuthorization = false}) => _request(method: 'POST', uri: Uri.parse('$url$path'), body: body, ignoreAuthorization: ignoreAuthorization);

  static Future<dynamic> postMultipart(String path, {Map<String, String>? fields, List<http.MultipartFile>? files, Duration? timeout}) => _requestMultipart(method: 'POST', uri: Uri.parse('$url$path'), fields: fields, files: files, timeout: timeout);

  static Future<dynamic> put(String path, {Map<String, dynamic>? body, bool ignoreAuthorization = false}) => _request(method: 'PUT', uri: Uri.parse('$url$path'), body: body, ignoreAuthorization: ignoreAuthorization);

  static Future<dynamic> putMultipart(String path, {Map<String, String>? fields, List<http.MultipartFile>? files, Duration? timeout}) => _requestMultipart(method: 'PUT', uri: Uri.parse('$url$path'), fields: fields, files: files, timeout: timeout);

  static Future<dynamic> delete(String path, {Map<String, dynamic>? body, bool ignoreAuthorization = false}) => _request(method: 'DELETE', uri: Uri.parse('$url$path'), body: body, ignoreAuthorization: ignoreAuthorization);

  static Future<void> handleError(Object e) async {
    if (e is String && e == 'Session is expired') {
      while (NavigationHelper.canGoBack()) {
        NavigationHelper.back();
      }
      NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const SignInPage()));
      return await showInformationDialog('Sesi Anda telah berakhir');
    }

    if (e is Map && e['message'] != null) return showErrorDialog(e['message'].toString());

    if (e is FormatException) return showErrorDialog(e.source);

    return showErrorDialog(e.toString());
  }
}
