import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_playground/app/modules/animation_explict_list%20/components/listview_explict.dart';

import '../../util/value/constant_colors.dart';

import 'animation_explict_list_store.dart';

class AnimationExplictListPage extends StatefulWidget {
  const AnimationExplictListPage({Key? key}) : super(key: key);
  @override
  AnimationExplictListPageState createState() =>
      AnimationExplictListPageState();
}

class AnimationExplictListPageState extends State<AnimationExplictListPage> {
  final AnimationExplictListStore store = Modular.get();
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
        title: const Text('List Animation Explict'),
      ),
      body: Column(
        children: <Widget>[
          Observer(
            builder: (context) {
              var heroiModels = store.heroiModels;
              return ListViewExplicit(
                heroiModels: heroiModels,
              );
            },
          ),
        ],
      ),
    );
  }
}
