import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
       backgroundColor: Colors.red.shade900,
          title: Text('Dicee', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  
  @override
  _DicePageState  createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
int rightDiceNumber = 1;


void changeDiceFace(){

  setState(() {
     rightDiceNumber = Random().nextInt(6) + 1;
  leftDiceNumber = Random().nextInt(6) + 1;
  });


}
  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [



        Expanded(
          child: Center(
            child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                      debugPrint('Left Dice Pressed $leftDiceNumber');
                    });
                  },
                  child: Image.asset(
                    'images/dice$leftDiceNumber.png',
                    width: 120,
                  ),
                ),
            
                SizedBox(width: 20), // space between dice
            
                TextButton(
                  onPressed: () {
                 changeDiceFace();
                 debugPrint('Right Dice Pressed $rightDiceNumber');
                  },
                  child: Image.asset(
                    'images/dice$rightDiceNumber.png',
                    width: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  }




