import 'package:flutter_modular/flutter_modular.dart';

import 'animation_implict_page.dart';
import 'animation_implict_store.dart';

class AnimationImplictModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AnimationImplictStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    //ChildRoute('/', child: (_, args) => const AnimationImplictPage()),
    ChildRoute('/animationImplictPage', child: (_, args) => const AnimationImplictPage()),
  ];
}
