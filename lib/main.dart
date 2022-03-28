import 'package:flutter/material.dart';
import 'package:navegacao/views/four_page.dart';
import 'package:navegacao/views/one_page.dart';
import 'package:navegacao/views/three_page.dart';
import 'package:navegacao/views/two_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: "/",
      routes: {
        "/": (_) => const OnePage(),
        "/twoPage": (_) => const TwoPage(),
        "/threePage": (_) => const ThreePage(),
        "/fourPage": (_) => const FourPage(),
      },
    );
  }
}
