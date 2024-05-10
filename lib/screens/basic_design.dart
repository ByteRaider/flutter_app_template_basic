import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          const Title(),
          const BottomSection(),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
                "Cibolac d'étole de ciboire de viande à chien de colon de sacristi de p'tit Jésus de bout d'crisse d'enfant d'chienne de Jésus de plâtre."),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: const Row(
        children: [
          Column(children: [
            Text('Some Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(width: 8),
            Text('Some place', style: TextStyle(color: Colors.grey)),
            SizedBox(width: 8),
          ]),
          Expanded(child: Divider()),
          Icon(Icons.star, color: Colors.red),
          SizedBox(width: 8),
          Text('41'),
        ],
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButton(icon: Icons.call, text: 'Call'),
            CustomButton(icon: Icons.near_me, text: 'Route'),
            CustomButton(icon: Icons.share, text: 'Share'),
          ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(height: 8),
        Text(text, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}
