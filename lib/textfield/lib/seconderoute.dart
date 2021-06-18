import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Seconde());
}

class Seconde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'page second',
      debugShowCheckedModeBanner: false,
      home: Page(),
    );
  }
}
  
class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: Text('data'),
      
      
      ),
    );
  }
}