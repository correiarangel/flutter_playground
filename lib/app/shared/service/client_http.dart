import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../interface/client_http_interface.dart';

class ClientHttp implements IClientHttp {
  final Dio dio;

  ClientHttp(this.dio);

  @override
  Future<Response>? getHeroiModel({required String router}) async {
    try {
      Response response = await dio.get(router);
      return response;
    } on Exception catch (err) {
      debugPrint('ERRO DIO getHeroi : $err');
      final res = Response(
        requestOptions: RequestOptions(path: ''),
        data: [],
        statusCode: 400,
      );
      return res;
    }
  }
}
