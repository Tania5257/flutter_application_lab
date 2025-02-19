import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product'),
        ),
        body: Center(
          child: Product(),
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      width: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(4.0),
                color: Colors.blue,
                child: Text(
                  '50% OFF',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Icon(Icons.favorite_border),
            ],
          ),
          SizedBox(height: 10.0),
          
          Center(
            child: Image.network(
             'asset\abc.png'
              height: 100.0,
            ),
          ),
          SizedBox(height: 10.0),
         
          Text(
            'Shoes',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5.0),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '45,000',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              Text(
                '55,000',
                style: TextStyle(
                  fontSize: 14.0,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

