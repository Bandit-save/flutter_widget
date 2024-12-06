import 'package:flutter/material.dart';
//import 'package:flutter_application_1/my_scroll.dart';
import 'package:flutter_application_1/word_widget.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter Sample",
      // home: MyContainer()
      home: MyWidget(),

    );
  }
}