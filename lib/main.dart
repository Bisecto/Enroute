import 'package:flutter/material.dart';

import 'App/onBod/onBodyScreen.dart';
import 'App/onBod/splashSCreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Splash(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/OnBody': (context) => const OnBodyScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home'),
    );
  }
}