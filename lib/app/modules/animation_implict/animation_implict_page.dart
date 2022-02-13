import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../util/value/constant_colors.dart';

import 'animation_implict_store.dart';

class AnimationImplictPage extends StatefulWidget {
  const AnimationImplictPage({Key? key}) : super(key: key);
  @override
  AnimationImplictPageState createState() => AnimationImplictPageState();
}

class AnimationImplictPageState extends State<AnimationImplictPage> {
  final AnimationImplictStore store = Modular.get();

  final _duration = const Duration(seconds: 3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.colorBlack,
      appBar: AppBar(
        title: const Text('Button Animation Implict'),
        backgroundColor: Colors.orange.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Observer(
          builder: (context) {
            return AnimatedAlign(
              alignment: store.isAnimatioRun
                  ? Alignment.topCenter
                  : Alignment.bottomRight,
              duration: _duration,
              child: GestureDetector(
                  child: AnimatedContainer(
       
                    width: store.isAnimatioRun ? 250 : 50,
                    height: 50,
                    duration: _duration,
                    decoration: BoxDecoration(
                      borderRadius: store.isAnimatioRun
                          ? BorderRadius.circular(8)
                          : BorderRadius.circular(45),
                      color: Colors.orange.shade700,
                    ),
                  ),
                  onTap: () => store.toChangesIsloading()),
            );
          },
        ),
      ),
    );
  }
}
