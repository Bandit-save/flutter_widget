import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {
  const MyScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ScrollView'),),
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical, //ใช้กับแนวตั้ง
        scrollDirection: Axis.horizontal, // ใช้กับแนวนอน
        padding: const EdgeInsets.all(10),
        child: Center(
          // child: Column(children: [
          child: Row(children: [
              boxContainer('one'),
              boxContainer('two'),
              boxContainer('three'),
              boxContainer('four'),
              boxContainer('five'),
              boxContainer('six'),
              boxContainer('seven'),

          ],),
        ),
      ),

    );
  }

  Widget boxContainer(String txt) => Container(
    width: 100,height: 150,
    color: Colors.cyan.shade300,
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    child: Text(txt,style: const TextStyle(fontSize: 20),),
  );
}