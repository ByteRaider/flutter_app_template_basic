import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.5,
        0.5
      ],
          colors: [
        Color(0xff5ee8c5),
        Color(0xff30BAD6),
      ]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
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

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
          child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: Colors.indigo),
        child: const Text('Welcome to page 2',
            style: TextStyle(
              color: Colors.white,
            )),
      )),
    );
  }
}
