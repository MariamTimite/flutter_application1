import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mon appli',
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  bool genre = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text('BMI CALCULATOR',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                child: ResuableCard( 
                  couleur: Colors.blue,),
              ),

              Expanded(
                child:ResuableCard(
                   couleur: Colors.blue,)
              ),
            ]),
          ),
          Expanded(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, 
            
            children: [
              
              Expanded(
                child: ResuableCard(
                   couleur: Colors.blue, 
                   cardChild: Column(
                     children: [
                   ],),

                ),
              ),
            ]),
          ),
          Expanded(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Expanded(
                child:ResuableCard(
                   couleur: Colors.blue,
                )
                
              ),
              Expanded(
                child:ResuableCard(
                  couleur: Colors.blue,
                ),
              ),
            ]),

           
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            width: double.infinity,
            height: 80,
            color: Colors.red,  
        ),

        ],
      ),
      backgroundColor: Colors.blueGrey[800],
    );
  }
}



class ResuableCard extends StatelessWidget {
ResuableCard({@required this.couleur,this.cardChild});
final Color couleur;
final cardChild;

@override
Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blueGrey[900],
          borderRadius: BorderRadius.circular(15)),
      height: 200,
      width: 50,
    );
  }
}
