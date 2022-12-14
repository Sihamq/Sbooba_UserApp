import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    //String? lang = CashHelper.getData("locale");
    dio = Dio(BaseOptions(
        baseUrl: 'https://kash5tak.com/api',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type': 'application/json',
          'api_password': '&-q^Tm9\$!5fY3nXj',
          'lang': 'en'
        }));
    // print(lang);
  }

  static Future<Response> getData(
      {required String url,
      Map<String, dynamic>? query,
      Map<String, dynamic>? option}) async {
    return await dio.get(url,
        queryParameters: query, options: Options(headers: option));
  }

  static Future<Response> postData(
      {required String url,
      Map<String, dynamic>? query,
      required Map<String, dynamic> data,
      Map<String, dynamic>? option}) async {
    return await dio.post(url,
        queryParameters: query, data: data, options: Options(headers: option));
  }

  static Future<Response> postData1(
      {required String url,
      Map<String, dynamic>? query,
      Map<String, dynamic>? option,
      required FormData data}) async {
    return await dio.post(
      url,
      queryParameters: query,
      data: data,
      options: Options(
        headers: option,
      ),
    );
  }
}
