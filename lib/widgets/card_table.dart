import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              icon: Icons.border_all, color: Colors.blue, text: 'General'),
          _SingleCard(
              icon: Icons.border_all, color: Colors.blue, text: 'General'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.border_all, color: Colors.blue, text: 'General'),
          _SingleCard(
              icon: Icons.border_all, color: Colors.blue, text: 'General'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.border_all, color: Colors.blue, text: 'General'),
          _SingleCard(
              icon: Icons.border_all, color: Colors.blue, text: 'General'),
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required this.icon, required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 50,
          child: Icon(icon, color: Colors.white, size: 50),
        ),
        const SizedBox(height: 10),
        Text(text, style: TextStyle(color: color))
      ],
    );
    return _CardBackground(child: column);
  }
}

// Single Card background
class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
              height: 180,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: child),
        ),
      ),
    );
  }
}
