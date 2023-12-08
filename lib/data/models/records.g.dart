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
      arrivalDate: parseDateTime(json['arrival_date'] as String?),
      minPrice: parseDouble(json['min_price']),
      maxPrice: parseDouble(json['max_price']),
      modalPrice: parseDouble(json['modal_price']),
    );

Map<String, dynamic> _$RecordsToJson(Records instance) => <String, dynamic>{
      'state': instance.state,
      'district': instance.district,
      'market': instance.market,
      'commodity': instance.commodity,
      'variety': instance.variety,
      'grade': instance.grade,
      'arrival_date': instance.arrivalDate?.toIso8601String(),
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'modal_price': instance.modalPrice,
    };
