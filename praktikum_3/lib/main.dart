import 'package:flutter/material.dart';

// review widget
// void main() {
//   runApp(
//     const Center(
//       child: Text(
//         'Hello, world!',
//         textDirection: TextDirection.ltr,
//       ),
//     ),
//   );
// }

// review container
// void main() {
//   runApp(
//     Center(
//       child: Container(
//         margin: const EdgeInsets.all(10.0),
//         color: Colors.amber[600],
//         width: 48.0,
//         height: 48.0,
//       ),
//     ),
//   );
// }

// review gridview
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('GridView Example')),
//         body: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: GridView.count(
//             primary: false,
//             padding: const EdgeInsets.all(20),
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             crossAxisCount: 2,
//             children: <Widget>[
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text("He'd have you all unravel at the"),
//                 color: Colors.teal[100],
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text('Heed not the rabble'),
//                 color: Colors.teal[200],
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text('Sound of screams but the'),
//                 color: Colors.teal[300],
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text('Who scream'),
//                 color: Colors.teal[400],
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text('Revolution is coming...'),
//                 color: Colors.teal[500],
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text('Revolution, they...'),
//                 color: Colors.teal[600],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// review listview builder
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<String> entries = <String>['A', 'B', 'C'];
//     final List<int> colorCodes = <int>[600, 500, 100];

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('ListView.builder Example')),
//         body: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: ListView.builder(
//                 padding: const EdgeInsets.all(8),
//                 itemCount: entries.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     height: 50,
//                     color: Colors.amber[colorCodes[index]],
//                     child: Center(child: Text('Entry ${entries[index]}')),
//                   );
//                 })),
//       ),
//     );
//   }
// }

// review list seperated
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<String> entries = <String>['A', 'B', 'C'];
//     final List<int> colorCodes = <int>[600, 500, 100];

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('ListView.builder Example')),
//         body: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: ListView.separated(
//               padding: const EdgeInsets.all(8),
//               itemCount: entries.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Container(
//                   height: 50,
//                   color: Colors.amber[colorCodes[index]],
//                   child: Center(child: Text('Entry ${entries[index]}')),
//                 );
//               },
//               separatorBuilder: (BuildContext context, int index) =>
//                   const Divider(),
//             )),
//       ),
//     );
//   }
// }

//review stack
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView.builder Example')),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
              ],
            )),
      ),
    );
  }
}
