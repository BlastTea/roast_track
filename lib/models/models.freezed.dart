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
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  UserRole? get role => throw _privateConstructorUsedError;
  set role(UserRole? value) => throw _privateConstructorUsedError;
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
      String? username,
      UserRole? role,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
    Object? username = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
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
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      UserRole? role,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
    Object? username = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
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
      this.username,
      this.role,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  int? id;
  @override
  String? username;
  @override
  UserRole? role;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, username: $username, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      String? username,
      UserRole? role,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get username;
  set username(String? value);
  @override
  UserRole? get role;
  set role(UserRole? value);
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
  List<Member>? get members => throw _privateConstructorUsedError;
  set members(List<Member>? value) => throw _privateConstructorUsedError;
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
      List<Member>? members,
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
    Object? members = freezed,
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
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>?,
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
      List<Member>? members,
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
    Object? members = freezed,
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
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>?,
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
      this.members,
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
  List<Member>? members;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Company(id: $id, name: $name, address: $address, members: $members, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      List<Member>? members,
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
  List<Member>? get members;
  set members(List<Member>? value);
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

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  set userId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  set companyId(int? value) => throw _privateConstructorUsedError;
  UserRole? get role => throw _privateConstructorUsedError;
  set role(UserRole? value) => throw _privateConstructorUsedError;
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
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res, Member>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'company_id') int? companyId,
      UserRole? role,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$MemberCopyWithImpl<$Res, $Val extends Member>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
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
abstract class _$$MemberImplCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$MemberImplCopyWith(
          _$MemberImpl value, $Res Function(_$MemberImpl) then) =
      __$$MemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'company_id') int? companyId,
      UserRole? role,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$MemberImplCopyWithImpl<$Res>
    extends _$MemberCopyWithImpl<$Res, _$MemberImpl>
    implements _$$MemberImplCopyWith<$Res> {
  __$$MemberImplCopyWithImpl(
      _$MemberImpl _value, $Res Function(_$MemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MemberImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
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
class _$MemberImpl implements _Member {
  _$MemberImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'company_id') this.companyId,
      this.role,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$MemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'user_id')
  int? userId;
  @override
  @JsonKey(name: 'company_id')
  int? companyId;
  @override
  UserRole? role;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Member(id: $id, userId: $userId, companyId: $companyId, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      __$$MemberImplCopyWithImpl<_$MemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberImplToJson(
      this,
    );
  }
}

abstract class _Member implements Member {
  factory _Member(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'company_id') int? companyId,
      UserRole? role,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$MemberImpl;

  factory _Member.fromJson(Map<String, dynamic> json) = _$MemberImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @JsonKey(name: 'user_id')
  set userId(int? value);
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @JsonKey(name: 'company_id')
  set companyId(int? value);
  @override
  UserRole? get role;
  set role(UserRole? value);
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
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  OrderStatus? get status => throw _privateConstructorUsedError;
  set status(OrderStatus? value) => throw _privateConstructorUsedError;
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
      String? name,
      OrderStatus? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
    Object? name = freezed,
    Object? status = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
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
      String? name,
      OrderStatus? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
    Object? name = freezed,
    Object? status = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
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
      this.name,
      this.status,
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
  String? name;
  @override
  OrderStatus? status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Order(id: $id, adminId: $adminId, companyId: $companyId, name: $name, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      String? name,
      OrderStatus? status,
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
  String? get name;
  set name(String? value);
  @override
  OrderStatus? get status;
  set status(OrderStatus? value);
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
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Roasting(id: $id, roasteryId: $roasteryId, orderId: $orderId, unit: $unit, timeElapsed: $timeElapsed, createdAt: $createdAt, updatedAt: $updatedAt)';
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
  @JsonKey(name: 'env_temp')
  double? get envTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'env_temp')
  set envTemp(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'bean_temp')
  double? get beanTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'bean_temp')
  set beanTemp(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_elapsed')
  double? get timeElapsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_elapsed')
  set timeElapsed(double? value) => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'env_temp') double? envTemp,
      @JsonKey(name: 'bean_temp') double? beanTemp,
      @JsonKey(name: 'time_elapsed') double? timeElapsed,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
      @JsonKey(name: 'env_temp') double? envTemp,
      @JsonKey(name: 'bean_temp') double? beanTemp,
      @JsonKey(name: 'time_elapsed') double? timeElapsed,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
      @JsonKey(name: 'env_temp') this.envTemp,
      @JsonKey(name: 'bean_temp') this.beanTemp,
      @JsonKey(name: 'time_elapsed') this.timeElapsed,
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
  @JsonKey(name: 'env_temp')
  double? envTemp;
  @override
  @JsonKey(name: 'bean_temp')
  double? beanTemp;
  @override
  @JsonKey(name: 'time_elapsed')
  double? timeElapsed;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Degree(id: $id, roastingId: $roastingId, type: $type, envTemp: $envTemp, beanTemp: $beanTemp, timeElapsed: $timeElapsed, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      @JsonKey(name: 'env_temp') double? envTemp,
      @JsonKey(name: 'bean_temp') double? beanTemp,
      @JsonKey(name: 'time_elapsed') double? timeElapsed,
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
  @JsonKey(name: 'env_temp')
  double? get envTemp;
  @JsonKey(name: 'env_temp')
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

ClassificationResult _$ClassificationResultFromJson(Map<String, dynamic> json) {
  return _ClassificationResult.fromJson(json);
}

/// @nodoc
mixin _$ClassificationResult {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'roasting_id')
  int? get roastingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'roasting_id')
  set roastingId(int? value) => throw _privateConstructorUsedError;
  Map<String, dynamic>? get result => throw _privateConstructorUsedError;
  set result(Map<String, dynamic>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_label')
  ResultLabelType? get resultLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_label')
  set resultLabel(ResultLabelType? value) => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'roasting_id') int? roastingId,
      Map<String, dynamic>? result,
      @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
    Object? roastingId = freezed,
    Object? result = freezed,
    Object? resultLabel = freezed,
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
              as Map<String, dynamic>?,
      resultLabel: freezed == resultLabel
          ? _value.resultLabel
          : resultLabel // ignore: cast_nullable_to_non_nullable
              as ResultLabelType?,
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
abstract class _$$ClassificationResultImplCopyWith<$Res>
    implements $ClassificationResultCopyWith<$Res> {
  factory _$$ClassificationResultImplCopyWith(_$ClassificationResultImpl value,
          $Res Function(_$ClassificationResultImpl) then) =
      __$$ClassificationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'roasting_id') int? roastingId,
      Map<String, dynamic>? result,
      @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
    Object? roastingId = freezed,
    Object? result = freezed,
    Object? resultLabel = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ClassificationResultImpl(
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
              as Map<String, dynamic>?,
      resultLabel: freezed == resultLabel
          ? _value.resultLabel
          : resultLabel // ignore: cast_nullable_to_non_nullable
              as ResultLabelType?,
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
      @JsonKey(name: 'roasting_id') this.roastingId,
      this.result,
      @JsonKey(name: 'result_label') this.resultLabel,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ClassificationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassificationResultImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'roasting_id')
  int? roastingId;
  @override
  Map<String, dynamic>? result;
  @override
  @JsonKey(name: 'result_label')
  ResultLabelType? resultLabel;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'ClassificationResult(id: $id, roastingId: $roastingId, result: $result, resultLabel: $resultLabel, createdAt: $createdAt, updatedAt: $updatedAt)';
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
          @JsonKey(name: 'roasting_id') int? roastingId,
          Map<String, dynamic>? result,
          @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
          @JsonKey(name: 'created_at') DateTime? createdAt,
          @JsonKey(name: 'updated_at') DateTime? updatedAt}) =
      _$ClassificationResultImpl;

  factory _ClassificationResult.fromJson(Map<String, dynamic> json) =
      _$ClassificationResultImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'roasting_id')
  int? get roastingId;
  @JsonKey(name: 'roasting_id')
  set roastingId(int? value);
  @override
  Map<String, dynamic>? get result;
  set result(Map<String, dynamic>? value);
  @override
  @JsonKey(name: 'result_label')
  ResultLabelType? get resultLabel;
  @JsonKey(name: 'result_label')
  set resultLabel(ResultLabelType? value);
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
