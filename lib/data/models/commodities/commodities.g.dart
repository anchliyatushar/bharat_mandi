// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commodities _$CommoditiesFromJson(Map json) => Commodities(
      created: json['created'] as int?,
      updated: json['updated'] as int?,
      createdDate: json['created_date'] == null
          ? null
          : DateTime.parse(json['created_date'] as String),
      updatedDate: json['updated_date'] == null
          ? null
          : DateTime.parse(json['updated_date'] as String),
      indexName: json['index_name'] as String?,
      org: (json['org'] as List<dynamic>?)?.map((e) => e as String).toList(),
      orgType: json['orgType'] as String?,
      title: json['title'] as String?,
      field: (json['field'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      catalogUuid: json['catalog_uuid'] as String?,
      sector:
          (json['sector'] as List<dynamic>?)?.map((e) => e as String).toList(),
      desc: json['desc'] as String?,
      fieldExposed: (json['fieldExposed'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      message: json['message'] as String?,
      version: json['version'] as String?,
      status: json['status'] as String?,
      total: json['total'] as int?,
      count: json['count'] as int?,
      limit: json['limit'] as String?,
      offset: json['offset'] as String?,
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => Records.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$CommoditiesToJson(Commodities instance) =>
    <String, dynamic>{
      'created': instance.created,
      'updated': instance.updated,
      'created_date': instance.createdDate?.toIso8601String(),
      'updated_date': instance.updatedDate?.toIso8601String(),
      'index_name': instance.indexName,
      'org': instance.org,
      'orgType': instance.orgType,
      'title': instance.title,
      'field': instance.field?.map((e) => e.toJson()).toList(),
      'catalog_uuid': instance.catalogUuid,
      'sector': instance.sector,
      'desc': instance.desc,
      'fieldExposed': instance.fieldExposed?.map((e) => e.toJson()).toList(),
      'message': instance.message,
      'version': instance.version,
      'status': instance.status,
      'total': instance.total,
      'count': instance.count,
      'limit': instance.limit,
      'offset': instance.offset,
      'records': instance.records?.map((e) => e.toJson()).toList(),
    };

Field _$FieldFromJson(Map json) => Field(
      name: json['name'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'type': instance.type,
    };
