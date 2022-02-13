import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../util/value/constant_colors.dart';
import 'components/button_animat.dart';
import 'components/progress_ball.dart';
import 'controllers/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeStore();

  @override
  Widget build(BuildContext context) {
    //timeDilation = 8.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColors.colorMajorelleBlue,
        title: const Text('Flutter Playground'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (context) {
                bool isLoading = controller.isLoading;
                return ProgressBall(
                  isLoading: isLoading,
                );
              },
            ),
            const SizedBox(height: 28.0),
            ButtonAnimat(
              fontSize: 24.0,
              router: '/loginGetMoneyPage',
              colorButton: ConstColors.colorMajorelleBlue,
              text: 'Login Get Money',
              homeStore: controller,
            ),
            const SizedBox(height: 28.0),
            ButtonAnimat(
              fontSize: 24.0,
              router: '/loginTinderPage',
              colorButton: ConstColors.colorFleryRose,
              text: 'Login tider',
              homeStore: controller,
            ),
            const SizedBox(height: 28.0),
            ButtonAnimat(
              fontSize: 18.0,
              router: '/animationImplictPage',
              colorButton: ConstColors.colorBlack,
              text: 'Button Animation Implict',
              homeStore: controller,
            ),
            const SizedBox(height: 28.0),
            ButtonAnimat(
              fontSize: 18.0,
              router: '/animationExlicitPage',
              colorButton: Colors.orange.shade900,
              text: 'Button Animation Explict',
              homeStore: controller,
            ),
            const SizedBox(height: 28.0),
            ButtonAnimat(
              fontSize: 18.0,
              router: '/listAnimation',
              colorButton: Colors.green.shade500,
              text: 'List Animation Implict',
              homeStore: controller,
            ),
            const SizedBox(height: 28.0),
            ButtonAnimat(
              fontSize: 18.0,
              router: '/listAnimationExplict',
              colorButton: Colors.deepPurple.shade600,
              text: 'List Animation Explict',
              homeStore: controller,
            ),
          ],
        ),
      ),
    );
  }
}
