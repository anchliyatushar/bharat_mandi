import 'dart:convert';

import 'package:bharat_mandi/data/data.dart';
import 'package:http/http.dart' as http;

class AppHttpService {
  Future<Responser> get(String url) async {
    try {
      final uri = Uri.tryParse(url);

      if (uri == null) {
        return Responser(isSuccess: false);
      }

      final response = await http.get(uri);

      return _responserData(response);
    } catch (e) {
      return Responser(isSuccess: false, message: e.toString());
    }
  }

  Responser _responserData(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
      case 206:
        return Responser(
          isSuccess: false,
          message: 'Fetch Success',
          data: jsonDecode(response.body),
        );

      case 400:
      case 510:
        return Responser(
          isSuccess: false,
          message: 'Fetch Success',
          data: jsonDecode(response.body),
        );

      case 401:
        return Responser(
          isSuccess: false,
          message: 'Fetch Success',
          data: jsonDecode(response.body),
        );
      case 403:
        return Responser(
          isSuccess: false,
          message: 'Fetch Success',
          data: jsonDecode(response.body),
        );
      case 404:
      case 500:
      case 503:
        return Responser(
          isSuccess: false,
          message: 'Fetch Success',
          data: jsonDecode(response.body),
        );
      default:
        return Responser(
          isSuccess: false,
          message: 'Fetch Success',
          data: jsonDecode(response.body),
        );
    }
  }
}
