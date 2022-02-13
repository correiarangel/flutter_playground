import 'package:dio/dio.dart';

/// Layer - >  ( / )
abstract class IClientHttp {
  Future<Response?>? getHeroiModel({required String router});
}
