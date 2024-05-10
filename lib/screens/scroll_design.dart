import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: const [
        Page1(),
        Page1(),
        Page1(),
        Page1(),
        Page1(),
      ],
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      Background(),
      MainContent(),
    ]);
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
    return SafeArea(
      bottom: false,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text('11°',
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.w600)),
            const Text('Miércoles', style: TextStyle(fontSize: 40)),
            Expanded(child: Container()),
            const Icon(Icons.keyboard_arrow_down,
                size: 100, color: Colors.white)
          ]),
    );
  }
}
