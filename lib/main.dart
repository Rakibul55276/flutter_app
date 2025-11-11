
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(title: const Text(appTitle),centerTitle: true, backgroundColor: Colors.blueGrey[900], titleTextStyle: const TextStyle(color: Colors.white),),
        body: const Center(
          child: Text('Hello World',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}