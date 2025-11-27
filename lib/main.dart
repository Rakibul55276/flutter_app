import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
           backgroundColor: Colors.red,
          title: Text('Dicee'),
           centerTitle: true,
          ),
         
      
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

    children: <Widget>[
Expanded(
  child: Image(image: AssetImage('images/dice1.png')),
),
    ],
    );
  }
}