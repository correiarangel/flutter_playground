import 'package:flutter_modular/flutter_modular.dart';

import 'animation_explicit_page.dart';
import 'animation_explicit_store.dart';


class AnimationExPlicitModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AnimationExPlicitStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    //ChildRoute('/', child: (_, args) => const AnimationImplictPage()),
    ChildRoute(
      '/animationExlicitPage',
      child: (_, args) => const AnimationExPlicitPage(),
    ),
  ];
}
