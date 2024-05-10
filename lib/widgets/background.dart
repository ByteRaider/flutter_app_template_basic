import 'package:flutter/material.dart';

class BackgroundX extends StatelessWidget {
  const BackgroundX({super.key});

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
      colors: [
        Colors.green,
        Colors.yellow,
        Colors.red,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      //stops: [0.3, 0.3, 0.31],
    ));
    return Stack(children: [
      Container(decoration: boxDecoration),
      const Positioned(top: -100, left: -100, child: _PinkBox()),
    ]);
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [
              Colors.green,
              Colors.white,
              Colors.red,
            ], stops: [
              0.2,
              0.6,
              0.2,
            ])),
        alignment: Alignment.topRight,
        margin: const EdgeInsets.all(20),
      ),
    );
  }
}
