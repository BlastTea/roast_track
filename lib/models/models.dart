import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m_widget/m_widget.dart';

part 'models.freezed.dart';
part 'models.g.dart';

List<dynamic>? _jsonFromString(dynamic data) => data == '' ? null : json.decode(jsonToCorrectStringFormat(data));

String? _jsonToString(dynamic json) => json.toString();

double? _parseDouble(dynamic value) => value is String
    ? double.tryParse(value)
    : value is double
        ? value
        : value is int
            ? value.toDouble()
            : null;

String? _doubleToString(double? value) => value?.toStringAsFixed(2);

@unfreezed
class User with _$User {
  factory User({
    int? id,
    @JsonKey(name: 'company_id') int? companyId,
    String? username,
    String? email,
    UserRole? role,
    String? name,
    String? address,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? description,
    Company? company,
    List<Order>? orders,
    List<Roasting>? roastings,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@unfreezed
class Company with _$Company {
  factory Company({
    int? id,
    String? name,
    String? address,
    List<User>? users,
    @JsonKey(name: 'classification_results') List<ClassificationResult>? classificationResults,
    List<Order>? orders,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}

@unfreezed
class ClassificationResult with _$ClassificationResult {
  factory ClassificationResult({
    int? id,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString) List<dynamic>? result,
    @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
    Company? company,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ClassificationResult;

  factory ClassificationResult.fromJson(Map<String, dynamic> json) => _$ClassificationResultFromJson(json);
}

@unfreezed
class Order with _$Order {
  factory Order({
    int? id,
    @JsonKey(name: 'admin_id') int? adminId,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'orderers_name') String? orderersName,
    String? address,
    @JsonKey(name: 'bean_type') BeanType? beanType,
    @JsonKey(name: 'from_district') String? fromDistrict,
    int? amount,
    @JsonKey(fromJson: _parseDouble, toJson: _doubleToString) double? total,
    @Default(OrderStatus.inProgress) OrderStatus? status,
    User? user,
    Company? company,
    List<Roasting>? roastings,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@unfreezed
class Roasting with _$Roasting {
  factory Roasting({
    int? id,
    @JsonKey(name: 'roastery_id') int? roasteryId,
    @JsonKey(name: 'order_id') int? orderId,
    UnitType? unit,
    @JsonKey(name: 'time_elapsed', fromJson: _parseDouble, toJson: _doubleToString) double? timeElapsed,
    User? user,
    Order? order,
    List<Degree>? degrees,
    @JsonKey(name: 'classification_roasting_results') List<ClassificationRoastingResult>? classificationRoastingResults,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Roasting;

  factory Roasting.fromJson(Map<String, dynamic> json) => _$RoastingFromJson(json);
}

@unfreezed
class Degree with _$Degree {
  factory Degree({
    int? id,
    @JsonKey(name: 'roasting_id') int? roastingId,
    DegreeType? type,
    @JsonKey(name: 'env_temp', includeIfNull: false, fromJson: _parseDouble, toJson: _doubleToString) double? envTemp,
    @JsonKey(name: 'bean_temp', fromJson: _parseDouble, toJson: _doubleToString) double? beanTemp,
    @JsonKey(name: 'time_elapsed', fromJson: _parseDouble, toJson: _doubleToString) double? timeElapsed,
    Roasting? roasting,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Degree;

  factory Degree.fromJson(Map<String, dynamic> json) => _$DegreeFromJson(json);
}

@unfreezed
class ClassificationRoastingResult with _$ClassificationRoastingResult {
  factory ClassificationRoastingResult({
    int? id,
    @JsonKey(name: 'roasting_id') int? roastingId,
    @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString) List<dynamic>? result,
    @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
    Roasting? roasting,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ClassificationRoastingResult;

  factory ClassificationRoastingResult.fromJson(Map<String, dynamic> json) => _$ClassificationRoastingResultFromJson(json);
}

@freezed
class SalesStatistics with _$SalesStatistics {
  factory SalesStatistics({
    DateTime? date,
    int? total,
  }) = _SalesStatistics;

  factory SalesStatistics.fromJson(Map<String, dynamic> json) => _$SalesStatisticsFromJson(json);
}

enum UserRole {
  admin,
  roastery;

  String get text => switch (this) {
        admin => 'Admin',
        roastery => 'Roastery',
      };
}

enum OrderStatus {
  @JsonValue('in_progress')
  inProgress,
  done;

  String get text => switch (this) {
        inProgress => 'Sedang Dikerjakan',
        done => 'Selesai',
      };
}

enum UnitType {
  fahrenheit,
  celcius,
}

enum DegreeType {
  charge(0),
  @JsonValue('dry_end')
  dryEnd(1),
  @JsonValue('fc_start')
  fcStart(2),
  @JsonValue('fc_end')
  fcEnd(3),
  @JsonValue('sc_start')
  scStart(4),
  drop(5);

  const DegreeType(this.value);
  final int value;

  String get text => switch (this) {
        charge => 'Charge',
        dryEnd => 'Dry End',
        fcStart => 'FC Start',
        fcEnd => 'FC End',
        scStart => 'SC Start',
        drop => 'Drop',
      };

  static DegreeType? fromValue(int? value) => switch (value) {
        0 => charge,
        1 => dryEnd,
        2 => fcStart,
        3 => fcEnd,
        4 => scStart,
        5 => drop,
        _ => null,
      };
}

enum ResultLabelType {
  green,
  light,
  medium,
  dark;

  String get text => switch (this) {
        green => 'Green',
        light => 'Light',
        medium => 'Medium',
        dark => 'Dark',
      };

  static ResultLabelType? fromString(String value) => switch (value) {
        'Green' => green,
        'Light' => light,
        'Medium' => medium,
        'Dark' => dark,
        _ => null,
      };
}

enum BeanType {
  light,
  medium,
  dark;

  String get text => switch (this) {
        light => 'Light',
        medium => 'Medium',
        dark => 'Dark',
      };
}
