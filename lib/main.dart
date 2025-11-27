import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/diamond.png'),
              ),
              Text(
                'Rakib Yu',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceCodePro',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
             
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
