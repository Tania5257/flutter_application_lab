import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter UI"),
        ),
        body: Container(
          // height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
           
            children: List.generate(
              100,
              (index) => Icon(
                Icons.radar,
                color: Colors.blue,
                size: index.toDouble(),
              ),
            ), 
            ) 
          ),
        ),
      ),
    );
  }
}
