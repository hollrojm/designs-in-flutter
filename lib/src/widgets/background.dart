// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: const [
          0.2,
          0.8
        ],
        colors: const [
          Color(0xff2E305F),
          Color(0Xff202333),
        ]),
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: boxDecoration,
        ),
        //Pink

        Positioned(top: -100, left: -30, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(colors: const [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 172, 1)
            ])),
      ),
    );
  }
}
