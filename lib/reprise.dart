import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App() );
}

class App  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: "mon application",
  debugShowCheckedModeBanner: true,
  home: Home (),
      
    );
  }
}




class Home  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text("Téléphone", style: TextStyle(color: Colors.red[500]))
        
        
      
      ,),
    );
  }
}

