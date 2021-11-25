import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SigleCard(
              color: Color.fromRGBO(63, 73, 232, 45),
              icon: Icons.accessibility_new_sharp,
              text: 'General',
            ),
            _SigleCard(
              color: Colors.pinkAccent,
              icon: Icons.cake_rounded,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCard(
              color: Colors.black,
              icon: Icons.adb_sharp,
              text: 'Options',
            ),
            _SigleCard(
              color: Colors.purple,
              icon: Icons.add_reaction,
              text: 'Friends',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCard(
              color: Colors.green,
              icon: Icons.admin_panel_settings_sharp,
              text: 'Security',
            ),
            _SigleCard(
              color: Colors.amber,
              icon: Icons.headphones_sharp,
              text: 'Music',
            ),
          ],
        )
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(colors: [
                Colors.white,
                color,
              ], stops: const [
                0.2,
                0.8
              ])),
          child: CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        )
      ],
    );
    return _CardBackground(
      child: column,
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
