import 'package:flutter/material.dart';
import 'SliderPages/SliderPages.dart';

void main() {
  runApp(const MaterialApp
    (home: MyApp(),
  debugShowCheckedModeBanner: false,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SliderPages()
    );
  }
}

