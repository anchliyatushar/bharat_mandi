import 'package:bharat_mandi/data/data.dart';
import 'package:bharat_mandi/services/services.dart';
import 'package:bharat_mandi/utils/app_utils.dart';

class CommoditiesRepo {
  final _httpService = AppUtils.locator.get<AppHttpService>();

  Future<Responser<Commodities>> getCommodities() async {
    try {
      final resp = await _httpService.get(
        AppEndpoints.baseUrl + AppEndpoints.commoditiesEndpoint,
      );

      final data = Commodities.fromJson(resp.data as Map<String, dynamic>);

      return Responser(
        message: resp.message,
        isSuccess: resp.isSuccess,
        data: data,
      );
    } catch (e) {
      return Responser(isSuccess: false, message: 'Data Parsing Failed');
    }
  }
}
