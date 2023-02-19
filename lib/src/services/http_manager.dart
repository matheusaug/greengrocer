import 'package:dio/dio.dart';

abstract class HttpMethods {
  static const String post = 'POST';
  static const String get = 'GET';
  static const String put = 'PUT';
  static const String patch = 'PATCH';
  static const String delete = 'DELETE';
}

class HttpManager {
  Future<Map> restRequest({
    required String url,
    required String method,
    Map? headers,
    Map? body,
  }) async {
    //headers da requisição
    final defaultHeders = headers?.cast<String, String>() ?? {}
      ..addAll({
        'content-type':
            'application/json', //Tipo do formato que estamos trabalhando
        'accept': 'application/json', // Tipo do formato que estamos aceitando
        'X-Parse-Application-Id':
            'g1Oui3JqxnY4S1ykpQWHwEKGOe0dRYCPvPF4iykc', // 1ºChave
        'X-Parse-REST-API-Key': 'rFBKU8tk0m5ZlKES2CGieOaoYz6TgKxVMv8jRIsN', //
      });

    Dio dio = Dio();

    try {
      Response response = await dio.request(
        url,
        options: Options(
          headers: defaultHeders,
          method: method,
        ),
        data: body,
      );
//Retorno do resultado do SERVER(BACKEND)
      return response.data;
    } on DioError catch (error) {
//Retorno do erro do DIO  resquest
      return error.response?.data ?? {};
    } catch (error) {
//Retorno de MAP vazio com erro generalizado
      return {};
    }
  }
}
