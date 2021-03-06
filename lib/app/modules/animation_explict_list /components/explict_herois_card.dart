import 'package:flutter/material.dart';

class HeroiCardExplict extends StatefulWidget {
  final String name;
  final String poder;
  final String descricao;

  const HeroiCardExplict({
    Key? key,
    required this.name,
    required this.poder,
    required this.descricao,
  }) : super(key: key);

  @override
  State<HeroiCardExplict> createState() => _HeroiCardExplictState();
}

class _HeroiCardExplictState extends State<HeroiCardExplict>
    with TickerProviderStateMixin {
  final _duration = const Duration(seconds: 2);
  late AnimationController animationController;
  late Animation<double> angleAnimation;
  late Animation<double> heightAnimation;
  late Animation<Color?> textColorAnimation;
  late Animation<Color?> borderColorAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: _duration,
    );
    borderColorAnimation = ColorTween(
      begin: Colors.green.shade500,
      end: Colors.green.shade100,
    ).animate(
      animationController,
    );
    textColorAnimation = ColorTween(
      begin: Colors.green.shade500,
      end: Colors.green.shade100,
    ).animate(
      animationController,
    );

    angleAnimation = Tween<double>(
      begin: 1.5,
      end: 0.0,
    ).animate(
      animationController,
    );
    heightAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      animationController,
    );
    super.initState();
  }

  void start() {
    if (animationController.value == 0) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(
              color: borderColorAnimation.value!,
            ),
            bottom: BorderSide(
              color: borderColorAnimation.value!,
            ),
          )),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Heroi:${widget.name}',
                  style: TextStyle(
                    color: Colors.green.shade100,
                    fontSize: 18.0,
                  ),
                ),
                trailing: Transform.rotate(
                  angle: angleAnimation.value,
                  child: Icon(
                    Icons.expand_more,
                    color: Colors.green.shade500,
                  ),
                ),
                onTap: () => start(),
              ),
              ClipRRect(
                child: Align(
                  heightFactor: heightAnimation.value,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: FlutterLogo(
                          size: 40,
                        ),
                      ),
                      Text(
                        'Descri????o: ${widget.descricao}',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.green.shade100,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
