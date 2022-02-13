import 'package:flutter/material.dart';

class HeroiCardImplict extends StatefulWidget {
  final String name;
  final String poder;
  final String descricao;

  const HeroiCardImplict({
    Key? key,
    required this.name,
    required this.poder,
    required this.descricao,
  }) : super(key: key);

  @override
  State<HeroiCardImplict> createState() => _HeroiCardImplictState();
}

class _HeroiCardImplictState extends State<HeroiCardImplict> {
  final _duration = const Duration(seconds: 3);
  bool _isRotation = false;
  double _angle = 0.2;
  Color color = Colors.green.shade500;
  void _rotation() {
    setState(() {
      if (_isRotation) {
        _angle -= 0.2;
        color = Colors.green.shade100;
      } else {
        color = Colors.green.shade500;
        _angle += 0.2;
      }
    });
  }

  void _setRotation() {
    setState(() {
      if (_isRotation == true) {
        _isRotation = false;
      } else {
        _isRotation = true;
      }
    });
    _rotation();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: color,
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
            onTap: () {
              _setRotation();
            },
            trailing: AnimatedRotation(
              turns: _angle,
              duration: _duration,
              curve: Curves.fastLinearToSlowEaseIn,
              child: Icon(
                Icons.expand_more,
                color:
                    _isRotation ? Colors.green.shade50 : Colors.green.shade500,
              ),
            ),
          ),
          AnimatedAlign(
            curve: Curves.decelerate,
            duration: _duration,
            alignment: Alignment.center,
            heightFactor: _isRotation ? 1 : 0,
            child: AnimatedCrossFade(
              firstCurve: Curves.decelerate,
              crossFadeState: _isRotation
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: _duration,
              firstChild: ClipRRect(
                child: Align(
                  heightFactor: _isRotation ? 1.0 : 0.0,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: FlutterLogo(
                          size: 40,
                        ),
                      ),
                      Text(
                        'Descrição: ${widget.descricao}',
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
              secondChild: const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
