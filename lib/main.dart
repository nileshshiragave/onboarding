import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var pages = [
    PageViewModel(
      title: "WASH HANDS",
      body:
          "Here you can write the description of the page, to explain someting...",
      image: Center(
          child: Image.asset("assets/images/screen-1.png", height: 225.0)),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w900,
            fontSize: 40.0,
            fontFamily: "Roboto"),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
      ),
    ),
    PageViewModel(
      title: "USE MASK",
      body:
          "Here you can write the description of the page, to explain someting...",
      image: Center(
          child: Image.asset("assets/images/screen-2.png", height: 225.0)),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w900,
            fontSize: 40.0,
            fontFamily: "Roboto"),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
      ),
    ),
    PageViewModel(
      title: "KEEP DISTANCE",
      body:
          "Here you can write the description of the page, to explain someting...",
      image: Center(
          child: Image.asset("assets/images/screen-3.png", height: 225.0)),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w900,
            fontSize: 40.0,
            fontFamily: "Roboto"),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
      ),
    ),
    PageViewModel(
      title: "CONTACT DOCTOR",
      body:
          "Here you can write the description of the page, to explain someting...",
      image: Center(
          child: Image.asset("assets/images/screen-4.png", height: 225.0)),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w900,
            fontSize: 40.0,
            fontFamily: "Roboto"),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: IntroductionScreen(
          pages: pages,
          onDone: () {},
          onSkip: () {},
          done: const Text(
            'DONE',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
