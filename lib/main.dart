import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AssetImage imoi = AssetImage("images/dice-1.png");

  List image = [
    "dice-1.png",
    "dice-2.png",
    "dice-3.png",
    "dice-4.png",
    "dice-5.png",
    "dice-6.png"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      width: 100,
      height: 100,
      child: Scaffold(
          appBar: AppBar(title: Text("appbar"), centerTitle: true),
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.pink, Colors.purple])),
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: imoi,
                    width: 200,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var ran = Random();
                          var k = ran.nextInt(6);
                          print(k);
                          imoi = AssetImage("images/" + image[k]);
                        });
                      },
                      child: Text("roll dice")),
                ],
              ),
            ),
          )),
    ));
  }
}
