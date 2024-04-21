// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$UserRoleEnumMap = {
  UserRole.owner: 'owner',
  UserRole.admin: 'admin',
  UserRole.roastery: 'roastery',
};

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'members': instance.members,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$MemberImpl _$$MemberImplFromJson(Map<String, dynamic> json) => _$MemberImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      companyId: json['company_id'] as int?,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$MemberImplToJson(_$MemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'company_id': instance.companyId,
      'role': _$UserRoleEnumMap[instance.role],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as int?,
      adminId: json['admin_id'] as int?,
      companyId: json['company_id'] as int?,
      orderersName: json['orderers_name'] as String?,
      address: json['address'] as String?,
      beanType: $enumDecodeNullable(_$BeanTypeEnumMap, json['bean_type']),
      fromDistrict: json['from_district'] as String?,
      amount: json['amount'] as int?,
      total: (json['total'] as num?)?.toDouble(),
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']) ??
          OrderStatus.inProgress,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'admin_id': instance.adminId,
      'company_id': instance.companyId,
      'orderers_name': instance.orderersName,
      'address': instance.address,
      'bean_type': _$BeanTypeEnumMap[instance.beanType],
      'from_district': instance.fromDistrict,
      'amount': instance.amount,
      'total': instance.total,
      'status': _$OrderStatusEnumMap[instance.status],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$BeanTypeEnumMap = {
  BeanType.light: 'light',
  BeanType.medium: 'medium',
  BeanType.dark: 'dark',
};

const _$OrderStatusEnumMap = {
  OrderStatus.inProgress: 'in_progress',
  OrderStatus.done: 'done',
};

_$ClassificationRoastingResultImpl _$$ClassificationRoastingResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassificationRoastingResultImpl(
      id: json['id'] as int?,
      roastingId: json['roasting_id'] as int?,
      result: json['result'] as Map<String, dynamic>?,
      resultLabel:
          $enumDecodeNullable(_$ResultLabelTypeEnumMap, json['result_label']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ClassificationRoastingResultImplToJson(
        _$ClassificationRoastingResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roasting_id': instance.roastingId,
      'result': instance.result,
      'result_label': _$ResultLabelTypeEnumMap[instance.resultLabel],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$ResultLabelTypeEnumMap = {
  ResultLabelType.green: 'green',
  ResultLabelType.light: 'light',
  ResultLabelType.medium: 'medium',
  ResultLabelType.dark: 'dark',
};

_$RoastingImpl _$$RoastingImplFromJson(Map<String, dynamic> json) =>
    _$RoastingImpl(
      id: json['id'] as int?,
      roasteryId: json['roastery_id'] as int?,
      orderId: json['order_id'] as int?,
      unit: $enumDecodeNullable(_$UnitTypeEnumMap, json['unit']),
      timeElapsed: (json['time_elapsed'] as num?)?.toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$RoastingImplToJson(_$RoastingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roastery_id': instance.roasteryId,
      'order_id': instance.orderId,
      'unit': _$UnitTypeEnumMap[instance.unit],
      'time_elapsed': instance.timeElapsed,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$UnitTypeEnumMap = {
  UnitType.fahrenheit: 'fahrenheit',
  UnitType.celcius: 'celcius',
};

_$DegreeImpl _$$DegreeImplFromJson(Map<String, dynamic> json) => _$DegreeImpl(
      id: json['id'] as int?,
      roastingId: json['roasting_id'] as int?,
      type: $enumDecodeNullable(_$DegreeTypeEnumMap, json['type']),
      envTemp: (json['env_temp'] as num?)?.toDouble(),
      beanTemp: (json['bean_temp'] as num?)?.toDouble(),
      timeElapsed: (json['time_elapsed'] as num?)?.toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$DegreeImplToJson(_$DegreeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roasting_id': instance.roastingId,
      'type': _$DegreeTypeEnumMap[instance.type],
      'env_temp': instance.envTemp,
      'bean_temp': instance.beanTemp,
      'time_elapsed': instance.timeElapsed,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$DegreeTypeEnumMap = {
  DegreeType.charge: 'charge',
  DegreeType.dryEnd: 'dry_end',
  DegreeType.fcStart: 'fc_start',
  DegreeType.fcEnd: 'fc_end',
  DegreeType.scStart: 'sc_start',
  DegreeType.drop: 'drop',
};

_$ClassificationResultImpl _$$ClassificationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassificationResultImpl(
      id: json['id'] as int?,
      companyId: json['company_id'] as int?,
      result: json['result'] as Map<String, dynamic>?,
      resultLabel:
          $enumDecodeNullable(_$ResultLabelTypeEnumMap, json['result_label']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ClassificationResultImplToJson(
        _$ClassificationResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'result': instance.result,
      'result_label': _$ResultLabelTypeEnumMap[instance.resultLabel],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$RoasteryImpl _$$RoasteryImplFromJson(Map<String, dynamic> json) =>
    _$RoasteryImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      companyId: json['company_id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$RoasteryImplToJson(_$RoasteryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'company_id': instance.companyId,
      'name': instance.name,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
