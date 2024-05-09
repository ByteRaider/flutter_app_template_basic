import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
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
