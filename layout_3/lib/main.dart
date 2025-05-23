import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:layout_3/myapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Part 2 & 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo Layout Part 3'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = const [
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "01/02/2022", "nilai": "140"},
    {"tgl": "12/01/2022", "nilai": "170"},
    {"tgl": "11/12/2021", "nilai": "110"},
    {"tgl": "10/11/2021", "nilai": "180"},
    {"tgl": "09/10/2021", "nilai": "190"},
    {"tgl": "08/09/2021", "nilai": "160"},
    {"tgl": "07/08/2021", "nilai": "155"},
    {"tgl": "06/07/2021", "nilai": "145"},
    {"tgl": "05/06/2021", "nilai": "140"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Welcome,",style: TextStyle(
                          color: Color(0xFF7367F0),
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.25)
                        ),
                        Text(
                          "21102228 - Fakhir Mustafa Afdal",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4B4B4B)),
                        )
                      ],
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/profpic.jpeg'),
                    ),
                  ],
                )
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                decoration: BoxDecoration(
                  gradient: 
                  const LinearGradient(colors: [Color(0xFF4839EB), Color(0xFF7367F0)]),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Status tes Toefl Anda:',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text("Lulus", style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.25)
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Listening\n      80',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            'Structure\n      80',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            'Reading\n      90',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                ],
              ),
              ),
              Container(
                child: Text('Riwayat Tes', style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.25))
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Tanggal tes:\nNilai:',
                              style: TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            Text(
                              data[index]["tgl"]! + '\n' + data[index]["nilai"]!,
                              style: TextStyle(color: Colors.blue, fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(height: 10)
                      ],
                    );
                  }
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: InkWell(
                    child: Text('Halaman Profil',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 26,
                            backgroundColor: Colors.redAccent)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp3()));
                    })),
            ],
          ),
        ),
        ),
    );
  }
}
