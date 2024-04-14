import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@unfreezed
class User with _$User {
  factory User({
    int? id,
    String? username,
    UserRole? role,
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
    List<Member>? members,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}

@unfreezed
class Member with _$Member {
  factory Member({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'company_id') int? companyId,
    UserRole? role,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

@unfreezed
class Order with _$Order {
  factory Order({
    int? id,
    @JsonKey(name: 'admin_id') int? adminId,
    @JsonKey(name: 'company_id') int? companyId,
    String? name,
    OrderStatus? status,
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
    @JsonKey(name: 'time_elapsed') double? timeElapsed,
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
    @JsonKey(name: 'env_temp') double? envTemp,
    @JsonKey(name: 'bean_temp') double? beanTemp,
    @JsonKey(name: 'time_elapsed') double? timeElapsed,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Degree;

  factory Degree.fromJson(Map<String, dynamic> json) => _$DegreeFromJson(json);
}

@unfreezed
class ClassificationResult with _$ClassificationResult {
  factory ClassificationResult({
    int? id,
    @JsonKey(name: 'roasting_id') int? roastingId,
    Map<String, dynamic>? result,
    @JsonKey(name: 'result_label') ResultLabelType? resultLabel,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ClassificationResult;

  factory ClassificationResult.fromJson(Map<String, dynamic> json) => _$ClassificationResultFromJson(json);
}

enum UserRole {
  owner,
  admin,
  roastery,
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
  charge,
  @JsonValue('dry_end')
  dryEnd,
  @JsonValue('fc_start')
  fcStart,
  @JsonValue('fc_end')
  fcEnd,
  @JsonValue('sc_start')
  scStart,
  drop;

  String get text => switch (this) {
        charge => 'Charge',
        dryEnd => 'Dry End',
        fcStart => 'FC Start',
        fcEnd => 'FC End',
        scStart => 'SC Start',
        drop => 'Drop',
      };
}

enum ResultLabelType {
  green,
  light,
  medium,
  dark,
}
