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
