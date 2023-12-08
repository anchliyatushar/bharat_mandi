import 'package:bharat_mandi/utils/utils.dart';
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
  @JsonKey(fromJson: parseDateTime, name: 'arrival_date')
  DateTime? arrivalDate;
  @JsonKey(fromJson: parseDouble, name: 'min_price')
  double? minPrice;
  @JsonKey(fromJson: parseDouble, name: 'max_price')
  double? maxPrice;
  @JsonKey(fromJson: parseDouble, name: 'modal_price')
  double? modalPrice;

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
