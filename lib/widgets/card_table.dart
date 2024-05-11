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
    return Container(
        height: 180,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 50,
              child: Icon(icon, color: color, size: 50),
            ),
            const SizedBox(height: 10),
            Text(text, style: TextStyle(color: color))
          ],
        ));
  }
}
