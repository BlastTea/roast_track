// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  set companyId(int? value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  UserRole? get role => throw _privateConstructorUsedError;
  set role(UserRole? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  set address(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  set phoneNumber(String? value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;
  set company(Company? value) => throw _privateConstructorUsedError;
  List<Order>? get orders => throw _privateConstructorUsedError;
  set orders(List<Order>? value) => throw _privateConstructorUsedError;
  List<Roasting>? get roastings => throw _privateConstructorUsedError;
  set roastings(List<Roasting>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyId = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
    Object? company = freezed,
    Object? orders = freezed,
    Object? roastings = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      roastings: freezed == roastings
          ? _value.roastings
          : roastings // ignore: cast_nullable_to_non_nullable
              as List<Roasting>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  @override
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyId = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
    Object? company = freezed,
    Object? orders = freezed,
    Object? roastings = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      roastings: freezed == roastings
          ? _value.roastings
          : roastings // ignore: cast_nullable_to_non_nullable
              as List<Roasting>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {this.id,
      @JsonKey(name: 'company_id') this.companyId,
      this.username,
      this.email,
      this.role,
      this.name,
      this.address,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.description,
      this.company,
      this.orders,
      this.roastings,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'company_id')
  int? companyId;
  @override
  String? username;
  @override
  String? email;
  @override
  UserRole? role;
  @override
  String? name;
  @override
  String? address;
  @override
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @override
  String? description;
  @override
  Company? company;
  @override
  List<Order>? orders;
  @override
  List<Roasting>? roastings;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, companyId: $companyId, username: $username, email: $email, role: $role, name: $name, address: $address, phoneNumber: $phoneNumber, description: $description, company: $company, orders: $orders, roastings: $roastings, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {int? id,
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
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @JsonKey(name: 'company_id')
  set companyId(int? value);
  @override
  String? get username;
  set username(String? value);
  @override
  String? get email;
  set email(String? value);
  @override
  UserRole? get role;
  set role(UserRole? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get address;
  set address(String? value);
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @JsonKey(name: 'phone_number')
  set phoneNumber(String? value);
  @override
  String? get description;
  set description(String? value);
  @override
  Company? get company;
  set company(Company? value);
  @override
  List<Order>? get orders;
  set orders(List<Order>? value);
  @override
  List<Roasting>? get roastings;
  set roastings(List<Roasting>? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  set address(String? value) => throw _privateConstructorUsedError;
  List<User>? get users => throw _privateConstructorUsedError;
  set users(List<User>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'classification_results')
  List<ClassificationResult>? get classificationResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'classification_results')
  set classificationResults(List<ClassificationResult>? value) =>
      throw _privateConstructorUsedError;
  List<Order>? get orders => throw _privateConstructorUsedError;
  set orders(List<Order>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      List<User>? users,
      @JsonKey(name: 'classification_results')
      List<ClassificationResult>? classificationResults,
      List<Order>? orders,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? users = freezed,
    Object? classificationResults = freezed,
    Object? orders = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      classificationResults: freezed == classificationResults
          ? _value.classificationResults
          : classificationResults // ignore: cast_nullable_to_non_nullable
              as List<ClassificationResult>?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      List<User>? users,
      @JsonKey(name: 'classification_results')
      List<ClassificationResult>? classificationResults,
      List<Order>? orders,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? users = freezed,
    Object? classificationResults = freezed,
    Object? orders = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CompanyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      classificationResults: freezed == classificationResults
          ? _value.classificationResults
          : classificationResults // ignore: cast_nullable_to_non_nullable
              as List<ClassificationResult>?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  _$CompanyImpl(
      {this.id,
      this.name,
      this.address,
      this.users,
      @JsonKey(name: 'classification_results') this.classificationResults,
      this.orders,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  int? id;
  @override
  String? name;
  @override
  String? address;
  @override
  List<User>? users;
  @override
  @JsonKey(name: 'classification_results')
  List<ClassificationResult>? classificationResults;
  @override
  List<Order>? orders;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Company(id: $id, name: $name, address: $address, users: $users, classificationResults: $classificationResults, orders: $orders, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  factory _Company(
      {int? id,
      String? name,
      String? address,
      List<User>? users,
      @JsonKey(name: 'classification_results')
      List<ClassificationResult>? classificationResults,
      List<Order>? orders,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get address;
  set address(String? value);
  @override
  List<User>? get users;
  set users(List<User>? value);
  @override
  @JsonKey(name: 'classification_results')
  List<ClassificationResult>? get classificationResults;
  @JsonKey(name: 'classification_results')
  set classificationResults(List<ClassificationResult>? value);
  @override
  List<Order>? get orders;
  set orders(List<Order>? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassificationResult _$ClassificationResultFromJson(Map<String, dynamic> json) {
  return _ClassificationResult.fromJson(json);
}

/// @nodoc
mixin _$ClassificationResult {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  set companyId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  List<dynamic>? get result => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  set result(List<dynamic>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_label')
  ResultLabelType? get resultLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_label')
  set resultLabel(ResultLabelType? value) => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;
  set company(Company? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassificationResultCopyWith<ClassificationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassificationResultCopyWith<$Res> {
  factory $ClassificationResultCopyWith(ClassificationResult value,
          $Res Function(ClassificationResult) then) =
      _$ClassificationResultCopyWithImpl<$Res, ClassificationResult>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
      List<dynamic>? result,
      @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
      Company? company,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class _$ClassificationResultCopyWithImpl<$Res,
        $Val extends ClassificationResult>
    implements $ClassificationResultCopyWith<$Res> {
  _$ClassificationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyId = freezed,
    Object? result = freezed,
    Object? resultLabel = freezed,
    Object? company = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      resultLabel: freezed == resultLabel
          ? _value.resultLabel
          : resultLabel // ignore: cast_nullable_to_non_nullable
              as ResultLabelType?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassificationResultImplCopyWith<$Res>
    implements $ClassificationResultCopyWith<$Res> {
  factory _$$ClassificationResultImplCopyWith(_$ClassificationResultImpl value,
          $Res Function(_$ClassificationResultImpl) then) =
      __$$ClassificationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
      List<dynamic>? result,
      @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
      Company? company,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  @override
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class __$$ClassificationResultImplCopyWithImpl<$Res>
    extends _$ClassificationResultCopyWithImpl<$Res, _$ClassificationResultImpl>
    implements _$$ClassificationResultImplCopyWith<$Res> {
  __$$ClassificationResultImplCopyWithImpl(_$ClassificationResultImpl _value,
      $Res Function(_$ClassificationResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyId = freezed,
    Object? result = freezed,
    Object? resultLabel = freezed,
    Object? company = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ClassificationResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      resultLabel: freezed == resultLabel
          ? _value.resultLabel
          : resultLabel // ignore: cast_nullable_to_non_nullable
              as ResultLabelType?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassificationResultImpl implements _ClassificationResult {
  _$ClassificationResultImpl(
      {this.id,
      @JsonKey(name: 'company_id') this.companyId,
      @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString) this.result,
      @JsonKey(name: 'result_label') this.resultLabel,
      this.company,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ClassificationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassificationResultImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'company_id')
  int? companyId;
  @override
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  List<dynamic>? result;
  @override
  @JsonKey(name: 'result_label')
  ResultLabelType? resultLabel;
  @override
  Company? company;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'ClassificationResult(id: $id, companyId: $companyId, result: $result, resultLabel: $resultLabel, company: $company, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassificationResultImplCopyWith<_$ClassificationResultImpl>
      get copyWith =>
          __$$ClassificationResultImplCopyWithImpl<_$ClassificationResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassificationResultImplToJson(
      this,
    );
  }
}

abstract class _ClassificationResult implements ClassificationResult {
  factory _ClassificationResult(
          {int? id,
          @JsonKey(name: 'company_id') int? companyId,
          @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
          List<dynamic>? result,
          @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
          Company? company,
          @JsonKey(name: 'created_at') DateTime? createdAt,
          @JsonKey(name: 'updated_at') DateTime? updatedAt}) =
      _$ClassificationResultImpl;

  factory _ClassificationResult.fromJson(Map<String, dynamic> json) =
      _$ClassificationResultImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @JsonKey(name: 'company_id')
  set companyId(int? value);
  @override
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  List<dynamic>? get result;
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  set result(List<dynamic>? value);
  @override
  @JsonKey(name: 'result_label')
  ResultLabelType? get resultLabel;
  @JsonKey(name: 'result_label')
  set resultLabel(ResultLabelType? value);
  @override
  Company? get company;
  set company(Company? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$ClassificationResultImplCopyWith<_$ClassificationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_id')
  int? get adminId => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_id')
  set adminId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  set companyId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderers_name')
  String? get orderersName => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderers_name')
  set orderersName(String? value) => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  set address(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'bean_type')
  BeanType? get beanType => throw _privateConstructorUsedError;
  @JsonKey(name: 'bean_type')
  set beanType(BeanType? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_district')
  String? get fromDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_district')
  set fromDistrict(String? value) => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  set amount(int? value) => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  set total(double? value) => throw _privateConstructorUsedError;
  OrderStatus? get status => throw _privateConstructorUsedError;
  set status(OrderStatus? value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;
  set company(Company? value) => throw _privateConstructorUsedError;
  List<Roasting>? get roastings => throw _privateConstructorUsedError;
  set roastings(List<Roasting>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'admin_id') int? adminId,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'orderers_name') String? orderersName,
      String? address,
      @JsonKey(name: 'bean_type') BeanType? beanType,
      @JsonKey(name: 'from_district') String? fromDistrict,
      int? amount,
      double? total,
      OrderStatus? status,
      User? user,
      Company? company,
      List<Roasting>? roastings,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  $UserCopyWith<$Res>? get user;
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? adminId = freezed,
    Object? companyId = freezed,
    Object? orderersName = freezed,
    Object? address = freezed,
    Object? beanType = freezed,
    Object? fromDistrict = freezed,
    Object? amount = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? user = freezed,
    Object? company = freezed,
    Object? roastings = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderersName: freezed == orderersName
          ? _value.orderersName
          : orderersName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      beanType: freezed == beanType
          ? _value.beanType
          : beanType // ignore: cast_nullable_to_non_nullable
              as BeanType?,
      fromDistrict: freezed == fromDistrict
          ? _value.fromDistrict
          : fromDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      roastings: freezed == roastings
          ? _value.roastings
          : roastings // ignore: cast_nullable_to_non_nullable
              as List<Roasting>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'admin_id') int? adminId,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'orderers_name') String? orderersName,
      String? address,
      @JsonKey(name: 'bean_type') BeanType? beanType,
      @JsonKey(name: 'from_district') String? fromDistrict,
      int? amount,
      double? total,
      OrderStatus? status,
      User? user,
      Company? company,
      List<Roasting>? roastings,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? adminId = freezed,
    Object? companyId = freezed,
    Object? orderersName = freezed,
    Object? address = freezed,
    Object? beanType = freezed,
    Object? fromDistrict = freezed,
    Object? amount = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? user = freezed,
    Object? company = freezed,
    Object? roastings = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderersName: freezed == orderersName
          ? _value.orderersName
          : orderersName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      beanType: freezed == beanType
          ? _value.beanType
          : beanType // ignore: cast_nullable_to_non_nullable
              as BeanType?,
      fromDistrict: freezed == fromDistrict
          ? _value.fromDistrict
          : fromDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      roastings: freezed == roastings
          ? _value.roastings
          : roastings // ignore: cast_nullable_to_non_nullable
              as List<Roasting>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  _$OrderImpl(
      {this.id,
      @JsonKey(name: 'admin_id') this.adminId,
      @JsonKey(name: 'company_id') this.companyId,
      @JsonKey(name: 'orderers_name') this.orderersName,
      this.address,
      @JsonKey(name: 'bean_type') this.beanType,
      @JsonKey(name: 'from_district') this.fromDistrict,
      this.amount,
      this.total,
      this.status = OrderStatus.inProgress,
      this.user,
      this.company,
      this.roastings,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'admin_id')
  int? adminId;
  @override
  @JsonKey(name: 'company_id')
  int? companyId;
  @override
  @JsonKey(name: 'orderers_name')
  String? orderersName;
  @override
  String? address;
  @override
  @JsonKey(name: 'bean_type')
  BeanType? beanType;
  @override
  @JsonKey(name: 'from_district')
  String? fromDistrict;
  @override
  int? amount;
  @override
  double? total;
  @override
  @JsonKey()
  OrderStatus? status;
  @override
  User? user;
  @override
  Company? company;
  @override
  List<Roasting>? roastings;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Order(id: $id, adminId: $adminId, companyId: $companyId, orderersName: $orderersName, address: $address, beanType: $beanType, fromDistrict: $fromDistrict, amount: $amount, total: $total, status: $status, user: $user, company: $company, roastings: $roastings, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {int? id,
      @JsonKey(name: 'admin_id') int? adminId,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'orderers_name') String? orderersName,
      String? address,
      @JsonKey(name: 'bean_type') BeanType? beanType,
      @JsonKey(name: 'from_district') String? fromDistrict,
      int? amount,
      double? total,
      OrderStatus? status,
      User? user,
      Company? company,
      List<Roasting>? roastings,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'admin_id')
  int? get adminId;
  @JsonKey(name: 'admin_id')
  set adminId(int? value);
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @JsonKey(name: 'company_id')
  set companyId(int? value);
  @override
  @JsonKey(name: 'orderers_name')
  String? get orderersName;
  @JsonKey(name: 'orderers_name')
  set orderersName(String? value);
  @override
  String? get address;
  set address(String? value);
  @override
  @JsonKey(name: 'bean_type')
  BeanType? get beanType;
  @JsonKey(name: 'bean_type')
  set beanType(BeanType? value);
  @override
  @JsonKey(name: 'from_district')
  String? get fromDistrict;
  @JsonKey(name: 'from_district')
  set fromDistrict(String? value);
  @override
  int? get amount;
  set amount(int? value);
  @override
  double? get total;
  set total(double? value);
  @override
  OrderStatus? get status;
  set status(OrderStatus? value);
  @override
  User? get user;
  set user(User? value);
  @override
  Company? get company;
  set company(Company? value);
  @override
  List<Roasting>? get roastings;
  set roastings(List<Roasting>? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Roasting _$RoastingFromJson(Map<String, dynamic> json) {
  return _Roasting.fromJson(json);
}

/// @nodoc
mixin _$Roasting {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'roastery_id')
  int? get roasteryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'roastery_id')
  set roasteryId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  set orderId(int? value) => throw _privateConstructorUsedError;
  UnitType? get unit => throw _privateConstructorUsedError;
  set unit(UnitType? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_elapsed')
  double? get timeElapsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_elapsed')
  set timeElapsed(double? value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;
  Order? get order => throw _privateConstructorUsedError;
  set order(Order? value) => throw _privateConstructorUsedError;
  List<Degree>? get degrees => throw _privateConstructorUsedError;
  set degrees(List<Degree>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'classification_roasting_results')
  List<ClassificationRoastingResult>? get classificationRoastingResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'classification_roasting_results')
  set classificationRoastingResults(
          List<ClassificationRoastingResult>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoastingCopyWith<Roasting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoastingCopyWith<$Res> {
  factory $RoastingCopyWith(Roasting value, $Res Function(Roasting) then) =
      _$RoastingCopyWithImpl<$Res, Roasting>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'roastery_id') int? roasteryId,
      @JsonKey(name: 'order_id') int? orderId,
      UnitType? unit,
      @JsonKey(name: 'time_elapsed') double? timeElapsed,
      User? user,
      Order? order,
      List<Degree>? degrees,
      @JsonKey(name: 'classification_roasting_results')
      List<ClassificationRoastingResult>? classificationRoastingResults,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  $UserCopyWith<$Res>? get user;
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class _$RoastingCopyWithImpl<$Res, $Val extends Roasting>
    implements $RoastingCopyWith<$Res> {
  _$RoastingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roasteryId = freezed,
    Object? orderId = freezed,
    Object? unit = freezed,
    Object? timeElapsed = freezed,
    Object? user = freezed,
    Object? order = freezed,
    Object? degrees = freezed,
    Object? classificationRoastingResults = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roasteryId: freezed == roasteryId
          ? _value.roasteryId
          : roasteryId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      timeElapsed: freezed == timeElapsed
          ? _value.timeElapsed
          : timeElapsed // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      degrees: freezed == degrees
          ? _value.degrees
          : degrees // ignore: cast_nullable_to_non_nullable
              as List<Degree>?,
      classificationRoastingResults: freezed == classificationRoastingResults
          ? _value.classificationRoastingResults
          : classificationRoastingResults // ignore: cast_nullable_to_non_nullable
              as List<ClassificationRoastingResult>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoastingImplCopyWith<$Res>
    implements $RoastingCopyWith<$Res> {
  factory _$$RoastingImplCopyWith(
          _$RoastingImpl value, $Res Function(_$RoastingImpl) then) =
      __$$RoastingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'roastery_id') int? roasteryId,
      @JsonKey(name: 'order_id') int? orderId,
      UnitType? unit,
      @JsonKey(name: 'time_elapsed') double? timeElapsed,
      User? user,
      Order? order,
      List<Degree>? degrees,
      @JsonKey(name: 'classification_roasting_results')
      List<ClassificationRoastingResult>? classificationRoastingResults,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class __$$RoastingImplCopyWithImpl<$Res>
    extends _$RoastingCopyWithImpl<$Res, _$RoastingImpl>
    implements _$$RoastingImplCopyWith<$Res> {
  __$$RoastingImplCopyWithImpl(
      _$RoastingImpl _value, $Res Function(_$RoastingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roasteryId = freezed,
    Object? orderId = freezed,
    Object? unit = freezed,
    Object? timeElapsed = freezed,
    Object? user = freezed,
    Object? order = freezed,
    Object? degrees = freezed,
    Object? classificationRoastingResults = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RoastingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roasteryId: freezed == roasteryId
          ? _value.roasteryId
          : roasteryId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      timeElapsed: freezed == timeElapsed
          ? _value.timeElapsed
          : timeElapsed // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      degrees: freezed == degrees
          ? _value.degrees
          : degrees // ignore: cast_nullable_to_non_nullable
              as List<Degree>?,
      classificationRoastingResults: freezed == classificationRoastingResults
          ? _value.classificationRoastingResults
          : classificationRoastingResults // ignore: cast_nullable_to_non_nullable
              as List<ClassificationRoastingResult>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoastingImpl implements _Roasting {
  _$RoastingImpl(
      {this.id,
      @JsonKey(name: 'roastery_id') this.roasteryId,
      @JsonKey(name: 'order_id') this.orderId,
      this.unit,
      @JsonKey(name: 'time_elapsed') this.timeElapsed,
      this.user,
      this.order,
      this.degrees,
      @JsonKey(name: 'classification_roasting_results')
      this.classificationRoastingResults,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$RoastingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoastingImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'roastery_id')
  int? roasteryId;
  @override
  @JsonKey(name: 'order_id')
  int? orderId;
  @override
  UnitType? unit;
  @override
  @JsonKey(name: 'time_elapsed')
  double? timeElapsed;
  @override
  User? user;
  @override
  Order? order;
  @override
  List<Degree>? degrees;
  @override
  @JsonKey(name: 'classification_roasting_results')
  List<ClassificationRoastingResult>? classificationRoastingResults;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Roasting(id: $id, roasteryId: $roasteryId, orderId: $orderId, unit: $unit, timeElapsed: $timeElapsed, user: $user, order: $order, degrees: $degrees, classificationRoastingResults: $classificationRoastingResults, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoastingImplCopyWith<_$RoastingImpl> get copyWith =>
      __$$RoastingImplCopyWithImpl<_$RoastingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoastingImplToJson(
      this,
    );
  }
}

abstract class _Roasting implements Roasting {
  factory _Roasting(
      {int? id,
      @JsonKey(name: 'roastery_id') int? roasteryId,
      @JsonKey(name: 'order_id') int? orderId,
      UnitType? unit,
      @JsonKey(name: 'time_elapsed') double? timeElapsed,
      User? user,
      Order? order,
      List<Degree>? degrees,
      @JsonKey(name: 'classification_roasting_results')
      List<ClassificationRoastingResult>? classificationRoastingResults,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$RoastingImpl;

  factory _Roasting.fromJson(Map<String, dynamic> json) =
      _$RoastingImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'roastery_id')
  int? get roasteryId;
  @JsonKey(name: 'roastery_id')
  set roasteryId(int? value);
  @override
  @JsonKey(name: 'order_id')
  int? get orderId;
  @JsonKey(name: 'order_id')
  set orderId(int? value);
  @override
  UnitType? get unit;
  set unit(UnitType? value);
  @override
  @JsonKey(name: 'time_elapsed')
  double? get timeElapsed;
  @JsonKey(name: 'time_elapsed')
  set timeElapsed(double? value);
  @override
  User? get user;
  set user(User? value);
  @override
  Order? get order;
  set order(Order? value);
  @override
  List<Degree>? get degrees;
  set degrees(List<Degree>? value);
  @override
  @JsonKey(name: 'classification_roasting_results')
  List<ClassificationRoastingResult>? get classificationRoastingResults;
  @JsonKey(name: 'classification_roasting_results')
  set classificationRoastingResults(List<ClassificationRoastingResult>? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$RoastingImplCopyWith<_$RoastingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Degree _$DegreeFromJson(Map<String, dynamic> json) {
  return _Degree.fromJson(json);
}

/// @nodoc
mixin _$Degree {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'roasting_id')
  int? get roastingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'roasting_id')
  set roastingId(int? value) => throw _privateConstructorUsedError;
  DegreeType? get type => throw _privateConstructorUsedError;
  set type(DegreeType? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'env_temp', includeIfNull: false)
  double? get envTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'env_temp', includeIfNull: false)
  set envTemp(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'bean_temp')
  double? get beanTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'bean_temp')
  set beanTemp(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_elapsed')
  double? get timeElapsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_elapsed')
  set timeElapsed(double? value) => throw _privateConstructorUsedError;
  Roasting? get roasting => throw _privateConstructorUsedError;
  set roasting(Roasting? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DegreeCopyWith<Degree> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DegreeCopyWith<$Res> {
  factory $DegreeCopyWith(Degree value, $Res Function(Degree) then) =
      _$DegreeCopyWithImpl<$Res, Degree>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'roasting_id') int? roastingId,
      DegreeType? type,
      @JsonKey(name: 'env_temp', includeIfNull: false) double? envTemp,
      @JsonKey(name: 'bean_temp') double? beanTemp,
      @JsonKey(name: 'time_elapsed') double? timeElapsed,
      Roasting? roasting,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  $RoastingCopyWith<$Res>? get roasting;
}

/// @nodoc
class _$DegreeCopyWithImpl<$Res, $Val extends Degree>
    implements $DegreeCopyWith<$Res> {
  _$DegreeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roastingId = freezed,
    Object? type = freezed,
    Object? envTemp = freezed,
    Object? beanTemp = freezed,
    Object? timeElapsed = freezed,
    Object? roasting = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roastingId: freezed == roastingId
          ? _value.roastingId
          : roastingId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DegreeType?,
      envTemp: freezed == envTemp
          ? _value.envTemp
          : envTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      beanTemp: freezed == beanTemp
          ? _value.beanTemp
          : beanTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      timeElapsed: freezed == timeElapsed
          ? _value.timeElapsed
          : timeElapsed // ignore: cast_nullable_to_non_nullable
              as double?,
      roasting: freezed == roasting
          ? _value.roasting
          : roasting // ignore: cast_nullable_to_non_nullable
              as Roasting?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoastingCopyWith<$Res>? get roasting {
    if (_value.roasting == null) {
      return null;
    }

    return $RoastingCopyWith<$Res>(_value.roasting!, (value) {
      return _then(_value.copyWith(roasting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DegreeImplCopyWith<$Res> implements $DegreeCopyWith<$Res> {
  factory _$$DegreeImplCopyWith(
          _$DegreeImpl value, $Res Function(_$DegreeImpl) then) =
      __$$DegreeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'roasting_id') int? roastingId,
      DegreeType? type,
      @JsonKey(name: 'env_temp', includeIfNull: false) double? envTemp,
      @JsonKey(name: 'bean_temp') double? beanTemp,
      @JsonKey(name: 'time_elapsed') double? timeElapsed,
      Roasting? roasting,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  @override
  $RoastingCopyWith<$Res>? get roasting;
}

/// @nodoc
class __$$DegreeImplCopyWithImpl<$Res>
    extends _$DegreeCopyWithImpl<$Res, _$DegreeImpl>
    implements _$$DegreeImplCopyWith<$Res> {
  __$$DegreeImplCopyWithImpl(
      _$DegreeImpl _value, $Res Function(_$DegreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roastingId = freezed,
    Object? type = freezed,
    Object? envTemp = freezed,
    Object? beanTemp = freezed,
    Object? timeElapsed = freezed,
    Object? roasting = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DegreeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roastingId: freezed == roastingId
          ? _value.roastingId
          : roastingId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DegreeType?,
      envTemp: freezed == envTemp
          ? _value.envTemp
          : envTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      beanTemp: freezed == beanTemp
          ? _value.beanTemp
          : beanTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      timeElapsed: freezed == timeElapsed
          ? _value.timeElapsed
          : timeElapsed // ignore: cast_nullable_to_non_nullable
              as double?,
      roasting: freezed == roasting
          ? _value.roasting
          : roasting // ignore: cast_nullable_to_non_nullable
              as Roasting?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DegreeImpl implements _Degree {
  _$DegreeImpl(
      {this.id,
      @JsonKey(name: 'roasting_id') this.roastingId,
      this.type,
      @JsonKey(name: 'env_temp', includeIfNull: false) this.envTemp,
      @JsonKey(name: 'bean_temp') this.beanTemp,
      @JsonKey(name: 'time_elapsed') this.timeElapsed,
      this.roasting,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$DegreeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DegreeImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'roasting_id')
  int? roastingId;
  @override
  DegreeType? type;
  @override
  @JsonKey(name: 'env_temp', includeIfNull: false)
  double? envTemp;
  @override
  @JsonKey(name: 'bean_temp')
  double? beanTemp;
  @override
  @JsonKey(name: 'time_elapsed')
  double? timeElapsed;
  @override
  Roasting? roasting;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Degree(id: $id, roastingId: $roastingId, type: $type, envTemp: $envTemp, beanTemp: $beanTemp, timeElapsed: $timeElapsed, roasting: $roasting, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DegreeImplCopyWith<_$DegreeImpl> get copyWith =>
      __$$DegreeImplCopyWithImpl<_$DegreeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DegreeImplToJson(
      this,
    );
  }
}

abstract class _Degree implements Degree {
  factory _Degree(
      {int? id,
      @JsonKey(name: 'roasting_id') int? roastingId,
      DegreeType? type,
      @JsonKey(name: 'env_temp', includeIfNull: false) double? envTemp,
      @JsonKey(name: 'bean_temp') double? beanTemp,
      @JsonKey(name: 'time_elapsed') double? timeElapsed,
      Roasting? roasting,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$DegreeImpl;

  factory _Degree.fromJson(Map<String, dynamic> json) = _$DegreeImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'roasting_id')
  int? get roastingId;
  @JsonKey(name: 'roasting_id')
  set roastingId(int? value);
  @override
  DegreeType? get type;
  set type(DegreeType? value);
  @override
  @JsonKey(name: 'env_temp', includeIfNull: false)
  double? get envTemp;
  @JsonKey(name: 'env_temp', includeIfNull: false)
  set envTemp(double? value);
  @override
  @JsonKey(name: 'bean_temp')
  double? get beanTemp;
  @JsonKey(name: 'bean_temp')
  set beanTemp(double? value);
  @override
  @JsonKey(name: 'time_elapsed')
  double? get timeElapsed;
  @JsonKey(name: 'time_elapsed')
  set timeElapsed(double? value);
  @override
  Roasting? get roasting;
  set roasting(Roasting? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$DegreeImplCopyWith<_$DegreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassificationRoastingResult _$ClassificationRoastingResultFromJson(
    Map<String, dynamic> json) {
  return _ClassificationRoastingResult.fromJson(json);
}

/// @nodoc
mixin _$ClassificationRoastingResult {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'roasting_id')
  int? get roastingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'roasting_id')
  set roastingId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  List<dynamic>? get result => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  set result(List<dynamic>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_label')
  ResultLabelType? get resultLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_label')
  set resultLabel(ResultLabelType? value) => throw _privateConstructorUsedError;
  Roasting? get roasting => throw _privateConstructorUsedError;
  set roasting(Roasting? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassificationRoastingResultCopyWith<ClassificationRoastingResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassificationRoastingResultCopyWith<$Res> {
  factory $ClassificationRoastingResultCopyWith(
          ClassificationRoastingResult value,
          $Res Function(ClassificationRoastingResult) then) =
      _$ClassificationRoastingResultCopyWithImpl<$Res,
          ClassificationRoastingResult>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'roasting_id') int? roastingId,
      @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
      List<dynamic>? result,
      @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
      Roasting? roasting,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  $RoastingCopyWith<$Res>? get roasting;
}

/// @nodoc
class _$ClassificationRoastingResultCopyWithImpl<$Res,
        $Val extends ClassificationRoastingResult>
    implements $ClassificationRoastingResultCopyWith<$Res> {
  _$ClassificationRoastingResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roastingId = freezed,
    Object? result = freezed,
    Object? resultLabel = freezed,
    Object? roasting = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roastingId: freezed == roastingId
          ? _value.roastingId
          : roastingId // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      resultLabel: freezed == resultLabel
          ? _value.resultLabel
          : resultLabel // ignore: cast_nullable_to_non_nullable
              as ResultLabelType?,
      roasting: freezed == roasting
          ? _value.roasting
          : roasting // ignore: cast_nullable_to_non_nullable
              as Roasting?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoastingCopyWith<$Res>? get roasting {
    if (_value.roasting == null) {
      return null;
    }

    return $RoastingCopyWith<$Res>(_value.roasting!, (value) {
      return _then(_value.copyWith(roasting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassificationRoastingResultImplCopyWith<$Res>
    implements $ClassificationRoastingResultCopyWith<$Res> {
  factory _$$ClassificationRoastingResultImplCopyWith(
          _$ClassificationRoastingResultImpl value,
          $Res Function(_$ClassificationRoastingResultImpl) then) =
      __$$ClassificationRoastingResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'roasting_id') int? roastingId,
      @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
      List<dynamic>? result,
      @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
      Roasting? roasting,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  @override
  $RoastingCopyWith<$Res>? get roasting;
}

/// @nodoc
class __$$ClassificationRoastingResultImplCopyWithImpl<$Res>
    extends _$ClassificationRoastingResultCopyWithImpl<$Res,
        _$ClassificationRoastingResultImpl>
    implements _$$ClassificationRoastingResultImplCopyWith<$Res> {
  __$$ClassificationRoastingResultImplCopyWithImpl(
      _$ClassificationRoastingResultImpl _value,
      $Res Function(_$ClassificationRoastingResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roastingId = freezed,
    Object? result = freezed,
    Object? resultLabel = freezed,
    Object? roasting = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ClassificationRoastingResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roastingId: freezed == roastingId
          ? _value.roastingId
          : roastingId // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      resultLabel: freezed == resultLabel
          ? _value.resultLabel
          : resultLabel // ignore: cast_nullable_to_non_nullable
              as ResultLabelType?,
      roasting: freezed == roasting
          ? _value.roasting
          : roasting // ignore: cast_nullable_to_non_nullable
              as Roasting?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassificationRoastingResultImpl
    implements _ClassificationRoastingResult {
  _$ClassificationRoastingResultImpl(
      {this.id,
      @JsonKey(name: 'roasting_id') this.roastingId,
      @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString) this.result,
      @JsonKey(name: 'result_label') this.resultLabel,
      this.roasting,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ClassificationRoastingResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassificationRoastingResultImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'roasting_id')
  int? roastingId;
  @override
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  List<dynamic>? result;
  @override
  @JsonKey(name: 'result_label')
  ResultLabelType? resultLabel;
  @override
  Roasting? roasting;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'ClassificationRoastingResult(id: $id, roastingId: $roastingId, result: $result, resultLabel: $resultLabel, roasting: $roasting, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassificationRoastingResultImplCopyWith<
          _$ClassificationRoastingResultImpl>
      get copyWith => __$$ClassificationRoastingResultImplCopyWithImpl<
          _$ClassificationRoastingResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassificationRoastingResultImplToJson(
      this,
    );
  }
}

abstract class _ClassificationRoastingResult
    implements ClassificationRoastingResult {
  factory _ClassificationRoastingResult(
          {int? id,
          @JsonKey(name: 'roasting_id') int? roastingId,
          @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
          List<dynamic>? result,
          @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
          Roasting? roasting,
          @JsonKey(name: 'created_at') DateTime? createdAt,
          @JsonKey(name: 'updated_at') DateTime? updatedAt}) =
      _$ClassificationRoastingResultImpl;

  factory _ClassificationRoastingResult.fromJson(Map<String, dynamic> json) =
      _$ClassificationRoastingResultImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'roasting_id')
  int? get roastingId;
  @JsonKey(name: 'roasting_id')
  set roastingId(int? value);
  @override
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  List<dynamic>? get result;
  @JsonKey(fromJson: _jsonFromString, toJson: _jsonToString)
  set result(List<dynamic>? value);
  @override
  @JsonKey(name: 'result_label')
  ResultLabelType? get resultLabel;
  @JsonKey(name: 'result_label')
  set resultLabel(ResultLabelType? value);
  @override
  Roasting? get roasting;
  set roasting(Roasting? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$ClassificationRoastingResultImplCopyWith<
          _$ClassificationRoastingResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SalesStatistics _$SalesStatisticsFromJson(Map<String, dynamic> json) {
  return _SalesStatistics.fromJson(json);
}

/// @nodoc
mixin _$SalesStatistics {
  DateTime? get date => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesStatisticsCopyWith<SalesStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesStatisticsCopyWith<$Res> {
  factory $SalesStatisticsCopyWith(
          SalesStatistics value, $Res Function(SalesStatistics) then) =
      _$SalesStatisticsCopyWithImpl<$Res, SalesStatistics>;
  @useResult
  $Res call({DateTime? date, int? total});
}

/// @nodoc
class _$SalesStatisticsCopyWithImpl<$Res, $Val extends SalesStatistics>
    implements $SalesStatisticsCopyWith<$Res> {
  _$SalesStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesStatisticsImplCopyWith<$Res>
    implements $SalesStatisticsCopyWith<$Res> {
  factory _$$SalesStatisticsImplCopyWith(_$SalesStatisticsImpl value,
          $Res Function(_$SalesStatisticsImpl) then) =
      __$$SalesStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? date, int? total});
}

/// @nodoc
class __$$SalesStatisticsImplCopyWithImpl<$Res>
    extends _$SalesStatisticsCopyWithImpl<$Res, _$SalesStatisticsImpl>
    implements _$$SalesStatisticsImplCopyWith<$Res> {
  __$$SalesStatisticsImplCopyWithImpl(
      _$SalesStatisticsImpl _value, $Res Function(_$SalesStatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? total = freezed,
  }) {
    return _then(_$SalesStatisticsImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesStatisticsImpl implements _SalesStatistics {
  _$SalesStatisticsImpl({this.date, this.total});

  factory _$SalesStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesStatisticsImplFromJson(json);

  @override
  final DateTime? date;
  @override
  final int? total;

  @override
  String toString() {
    return 'SalesStatistics(date: $date, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesStatisticsImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesStatisticsImplCopyWith<_$SalesStatisticsImpl> get copyWith =>
      __$$SalesStatisticsImplCopyWithImpl<_$SalesStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesStatisticsImplToJson(
      this,
    );
  }
}

abstract class _SalesStatistics implements SalesStatistics {
  factory _SalesStatistics({final DateTime? date, final int? total}) =
      _$SalesStatisticsImpl;

  factory _SalesStatistics.fromJson(Map<String, dynamic> json) =
      _$SalesStatisticsImpl.fromJson;

  @override
  DateTime? get date;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$SalesStatisticsImplCopyWith<_$SalesStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
