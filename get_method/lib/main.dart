import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUGAS 5.1 GET METHOD',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PostsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<dynamic> posts = [];
  int currentIndex = 0;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    setState(() {
      isLoading = true;
    });
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      if (response.statusCode == 200) {
        setState(() {
          posts = json.decode(response.body);
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load Posts');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print("Error fetching posts: $e");
    }
  }

  void showNextPost() {
    setState(() {
      if (currentIndex < posts.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
    });
  }

  void showPreviousPost() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = posts.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TUGAS 5.1 GET METHOD')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama: FAKHIR MUSTAFA AFDAL',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'NIM: 21102228',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: isLoading
                  ? Center(child: CircularProgressIndicator())
                  : posts.isEmpty
                      ? Center(child: Text('No posts available'))
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Post ${currentIndex + 1} dari ${posts.length}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'ID: ${posts[currentIndex]['id'].toString()}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              posts[currentIndex]['title'],
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 10),
                            Text(
                              posts[currentIndex]['body'],
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: showPreviousPost,
                  child: Text('Sebelumnya'),
                ),
                ElevatedButton(
                  onPressed: showNextPost,
                  child: Text('Berikutnya'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
