import 'package:json_annotation/json_annotation.dart';

part 'records.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class Records {
  String? state;
  String? district;
  String? market;
  String? commodity;
  String? variety;
  String? grade;
  String? arrivalDate;
  String? minPrice;
  String? maxPrice;
  String? modalPrice;

  Records({
    this.state,
    this.district,
    this.market,
    this.commodity,
    this.variety,
    this.grade,
    this.arrivalDate,
    this.minPrice,
    this.maxPrice,
    this.modalPrice,
  });

  factory Records.fromJson(Map<String, dynamic> json) =>
      _$RecordsFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsToJson(this);
}
