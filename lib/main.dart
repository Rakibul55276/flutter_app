import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
    //  appBar: AppBar(
    //   title: const Text('My Flutter App'),
    //   centerTitle: true,),


     body: SafeArea(
        child: Column(
          children: <Widget>[



            
          ],
        ),
     ),
    ),
    );
  
    
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int nDonuts = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Text('My Flutter App'),
//         centerTitle: true,
//         titleTextStyle: const TextStyle(
//           fontSize: 24,
//           color: Colors.white,
//       ),
//       ),
//       body: Center(
//         child: Text(
//           'Number of donuts eaten: $nDonuts',
//           style: const TextStyle(fontSize: 22),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.red,
//         child: const Icon(Icons.add),
//         onPressed: () {
//           setState(() {
//             nDonuts++;
//           });
//         },
//       ),
//     );
//   }
// }
