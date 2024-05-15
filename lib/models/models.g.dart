// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      companyId: json['company_id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      name: json['name'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      description: json['description'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      roastings: (json['roastings'] as List<dynamic>?)
          ?.map((e) => Roasting.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'company_id': instance.companyId,
      'username': instance.username,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role],
      'name': instance.name,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'description': instance.description,
      'company': instance.company,
      'orders': instance.orders,
      'roastings': instance.roastings,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$UserRoleEnumMap = {
  UserRole.admin: 'admin',
  UserRole.roastery: 'roastery',
};

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      classificationResults: (json['classification_results'] as List<dynamic>?)
          ?.map((e) => ClassificationResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
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
      'users': instance.users,
      'classification_results': instance.classificationResults,
      'orders': instance.orders,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$ClassificationResultImpl _$$ClassificationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassificationResultImpl(
      id: json['id'] as int?,
      companyId: json['company_id'] as int?,
      result: _jsonFromString(json['result']),
      resultLabel:
          $enumDecodeNullable(_$ResultLabelTypeEnumMap, json['result_label']),
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
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
      'result': _jsonToString(instance.result),
      'result_label': _$ResultLabelTypeEnumMap[instance.resultLabel],
      'company': instance.company,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$ResultLabelTypeEnumMap = {
  ResultLabelType.green: 'green',
  ResultLabelType.light: 'light',
  ResultLabelType.medium: 'medium',
  ResultLabelType.dark: 'dark',
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
      total: _parseDouble(json['total']),
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']) ??
          OrderStatus.inProgress,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      roastings: (json['roastings'] as List<dynamic>?)
          ?.map((e) => Roasting.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'total': _doubleToString(instance.total),
      'status': _$OrderStatusEnumMap[instance.status],
      'user': instance.user,
      'company': instance.company,
      'roastings': instance.roastings,
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

_$RoastingImpl _$$RoastingImplFromJson(Map<String, dynamic> json) =>
    _$RoastingImpl(
      id: json['id'] as int?,
      roasteryId: json['roastery_id'] as int?,
      orderId: json['order_id'] as int?,
      unit: $enumDecodeNullable(_$UnitTypeEnumMap, json['unit']),
      timeElapsed: _parseDouble(json['time_elapsed']),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      degrees: (json['degrees'] as List<dynamic>?)
          ?.map((e) => Degree.fromJson(e as Map<String, dynamic>))
          .toList(),
      classificationRoastingResults: (json['classification_roasting_results']
              as List<dynamic>?)
          ?.map((e) =>
              ClassificationRoastingResult.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'time_elapsed': _doubleToString(instance.timeElapsed),
      'user': instance.user,
      'order': instance.order,
      'degrees': instance.degrees,
      'classification_roasting_results': instance.classificationRoastingResults,
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
      envTemp: _parseDouble(json['env_temp']),
      beanTemp: _parseDouble(json['bean_temp']),
      timeElapsed: _parseDouble(json['time_elapsed']),
      roasting: json['roasting'] == null
          ? null
          : Roasting.fromJson(json['roasting'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$DegreeImplToJson(_$DegreeImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'roasting_id': instance.roastingId,
    'type': _$DegreeTypeEnumMap[instance.type],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('env_temp', _doubleToString(instance.envTemp));
  val['bean_temp'] = _doubleToString(instance.beanTemp);
  val['time_elapsed'] = _doubleToString(instance.timeElapsed);
  val['roasting'] = instance.roasting;
  val['created_at'] = instance.createdAt?.toIso8601String();
  val['updated_at'] = instance.updatedAt?.toIso8601String();
  return val;
}

const _$DegreeTypeEnumMap = {
  DegreeType.charge: 'charge',
  DegreeType.dryEnd: 'dry_end',
  DegreeType.fcStart: 'fc_start',
  DegreeType.fcEnd: 'fc_end',
  DegreeType.scStart: 'sc_start',
  DegreeType.drop: 'drop',
};

_$ClassificationRoastingResultImpl _$$ClassificationRoastingResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassificationRoastingResultImpl(
      id: json['id'] as int?,
      roastingId: json['roasting_id'] as int?,
      result: _jsonFromString(json['result']),
      resultLabel:
          $enumDecodeNullable(_$ResultLabelTypeEnumMap, json['result_label']),
      roasting: json['roasting'] == null
          ? null
          : Roasting.fromJson(json['roasting'] as Map<String, dynamic>),
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
      'result': _jsonToString(instance.result),
      'result_label': _$ResultLabelTypeEnumMap[instance.resultLabel],
      'roasting': instance.roasting,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$SalesStatisticsImpl _$$SalesStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesStatisticsImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$SalesStatisticsImplToJson(
        _$SalesStatisticsImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'total': instance.total,
    };
