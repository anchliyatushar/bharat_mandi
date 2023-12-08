// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Records _$RecordsFromJson(Map json) => Records(
      state: json['state'] as String?,
      district: json['district'] as String?,
      market: json['market'] as String?,
      commodity: json['commodity'] as String?,
      variety: json['variety'] as String?,
      grade: json['grade'] as String?,
      arrivalDate: json['arrivalDate'] as String?,
      minPrice: json['minPrice'] as String?,
      maxPrice: json['maxPrice'] as String?,
      modalPrice: json['modalPrice'] as String?,
    );

Map<String, dynamic> _$RecordsToJson(Records instance) => <String, dynamic>{
      'state': instance.state,
      'district': instance.district,
      'market': instance.market,
      'commodity': instance.commodity,
      'variety': instance.variety,
      'grade': instance.grade,
      'arrivalDate': instance.arrivalDate,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'modalPrice': instance.modalPrice,
    };
