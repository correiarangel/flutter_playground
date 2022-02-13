import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/button_animat_explict.dart';
import '../../util/value/constant_colors.dart';

import 'animation_explicit_store.dart';

class AnimationExPlicitPage extends StatefulWidget {
  const AnimationExPlicitPage({Key? key}) : super(key: key);
  @override
  AnimationExPlicitPageState createState() => AnimationExPlicitPageState();
}

class AnimationExPlicitPageState extends State<AnimationExPlicitPage> {
  final AnimationExPlicitStore store = Modular.get();

  // ignore: unused_field
  final _duration = const Duration(seconds: 3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.colorBlack,
      appBar: AppBar(
        title: const Text('Button Animation Explict'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ButtonAnimatExplict(
            store: store,
            colorButton: Colors.deepPurpleAccent,
          )

          /* Observer(
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
        ), */
          ),
    );
  }
}
