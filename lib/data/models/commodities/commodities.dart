import 'package:bharat_mandi/data/models/records.dart';
import 'package:json_annotation/json_annotation.dart';

part 'commodities.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class Commodities {
  int? created;
  int? updated;
  @JsonKey(name: 'created_date')
  DateTime? createdDate;
  @JsonKey(name: 'updated_date')
  DateTime? updatedDate;
  @JsonKey(name: 'index_name')
  String? indexName;
  List<String>? org;
  String? orgType;
  String? title;
  List<Field>? field;
  @JsonKey(name: 'catalog_uuid')
  String? catalogUuid;
  List<String>? sector;
  String? desc;
  List<Field>? fieldExposed;
  String? message;
  String? version;
  String? status;
  int? total;
  int? count;
  String? limit;
  String? offset;
  List<Records>? records;

  Commodities({
    this.created,
    this.updated,
    this.createdDate,
    this.updatedDate,
    this.indexName,
    this.org,
    this.orgType,
    this.title,
    this.field,
    this.catalogUuid,
    this.sector,
    this.desc,
    this.fieldExposed,
    this.message,
    this.version,
    this.status,
    this.total,
    this.count,
    this.limit,
    this.offset,
    this.records,
  });

  factory Commodities.fromJson(Map<String, dynamic> json) =>
      _$CommoditiesFromJson(json);

  Map<String, dynamic> toJson() => _$CommoditiesToJson(this);
}

@JsonSerializable(anyMap: true, explicitToJson: true)
class Field {
  String? name;
  String? id;
  String? type;

  Field({this.name, this.id, this.type});

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}
