import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'shared/interface/client_http_interface.dart';
import 'shared/interface/heroi_repository_interface.dart';
import 'shared/repositories/heroi_repository.dart';
import 'shared/service/client_http.dart';
import 'util/value/constant_string_url.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind(
      (i) => Dio(
        BaseOptions(
          baseUrl: ConstStringUrl.urlBase,
          receiveTimeout: 5000,
          connectTimeout: 5000,
          contentType: 'application/json',
          responseType: ResponseType.plain,
        ),
      ),
    ),
    Bind<IClientHttp>((i) => ClientHttp(i.get())),
    Bind<IHeroiRepository>((i) => HeroiRepository(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
