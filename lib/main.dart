import 'package:flutter/material.dart';

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
                      leftDiceNumber = 5;
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
                    debugPrint("Right Dice Pressed");
                  },
                  child: Image.asset(
                    'images/dice1.png',
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




