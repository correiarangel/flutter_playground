import 'package:flutter_modular/flutter_modular.dart';
import '../animation_explict_list%20/animation_explict_list_module.dart';
import '../animation_explict/animation_explicit_module.dart';
import '../animation_implict_list/animation_implict_list_module.dart';
import '../animation_implict/animation_implict_module.dart';
import '../login_get_money/login_get_money_module.dart';
import '../login_tinder/login_tinder_module.dart';
import 'controllers/home_store.dart';


import 'home_page.dart';
 
class HomeModule extends Module {
  @override
  final List<Bind> binds = [
 Bind.lazySingleton((i) => HomeStore()),
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute('/home', child: (_, args) => const HomePage()),
   ModuleRoute(Modular.initialRoute, module: LoginTinderModule()),
   ModuleRoute(Modular.initialRoute, module: LoginGetMoneyModule()),
   ModuleRoute(Modular.initialRoute, module: AnimationImplictModule()),
   ModuleRoute(Modular.initialRoute, module: AnimationExPlicitModule()),
   ModuleRoute(Modular.initialRoute, module: AnimationImplictListModule()),
   ModuleRoute(Modular.initialRoute, module: AnimationExplictListModule()),
 ];
}

