import 'dart:html';

import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my first interface',
      debugShowCheckedModeBanner: true,
      home: Home(),
      
    );
  }
} 



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
backgroundColor: Colors.white, 
title: Text(
  '123 Main st', style: TextStyle(color: Colors.black)
),


),


    );
  }
  
}