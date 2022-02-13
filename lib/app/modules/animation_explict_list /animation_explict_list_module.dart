import 'package:flutter_modular/flutter_modular.dart';

import 'animation_explict_list_page.dart';
import 'animation_explict_list_store.dart';

class AnimationExplictListModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AnimationExplictListStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/listAnimationExplict',
      child: (_, args) => const AnimationExplictListPage(),
    ),
  ];
}
