import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter UI"),
        ),
        body: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 60,
            ),
            Icon(Icons.star, color: Colors.yellow, size: 60),
          ],
        ),
      ),
    );
  }
}
