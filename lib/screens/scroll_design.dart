import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(children: [
      Background(),
      MainContent(),
    ]));
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage('assets/background.jpg')));
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text('11°',
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.w600)),
            Text('Miércoles', style: TextStyle(fontSize: 40)),
            Expanded(
                child: Icon(Icons.keyboard_arrow_down,
                    size: 100, color: Colors.white))
          ]),
    );
  }
}
