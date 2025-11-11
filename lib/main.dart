
import 'package:flutter/material.dart';

void main() {
  runApp(

    MaterialApp(

      home:Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          toolbarHeight:70.0,
          centerTitle: true,
          title:Text(' I Am Rich'),
        titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
         
         backgroundColor: Colors.blueGrey[900],
        ),
        
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
          ),
        )
      
      ),
   
  
  );
}
