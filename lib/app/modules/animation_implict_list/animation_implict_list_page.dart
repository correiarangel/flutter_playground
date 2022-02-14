import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_playground/app/util/value/constant_colors.dart';

import 'controllers/animation_implict_list_store.dart';

import 'components/listview_implicit.dart';

class AnimationImplictListPage extends StatefulWidget {
  const AnimationImplictListPage({Key? key}) : super(key: key);
  @override
  AnimationImplictListPageState createState() =>
      AnimationImplictListPageState();
}

class AnimationImplictListPageState extends State<AnimationImplictListPage> {
  final AnimationImplictListStore store = Modular.get();
  @override
  void initState() {
    store.fillHeroiModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.colorBlack,
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: const Text('List Animation Implict'),
      ),
      body: Column(
        children: <Widget>[
          Observer(
            builder: (context) {
              var heroiModels = store.heroiModels;
              return ListViewImplicit(
                heroiModels: heroiModels,
              );
            },
          ),
        ],
      ),
    );
  }
}
