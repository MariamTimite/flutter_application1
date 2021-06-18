import 'package:flutter/material.dart';
import 'seconderoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Formulaire(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Singn in" ,style: TextStyle(fontSize:30)),
        ),
        body: SingleChildScrollView(
                  child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(40),
                child: Text(
                  "connexion",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(150),
                  image: DecorationImage(
                      image: AssetImage("images/profile.png"), fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 26, color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      suffixStyle: const TextStyle(color: Colors.green)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 26, color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixStyle: const TextStyle(color: Colors.green)),
                ),
              ),
              Row(children: [
                Container(
                  width: 230,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                      ),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      onPressed: () {
                        print("=====Mariam======");
                      },
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      print("ERSD");
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                    ))
              ]),
              SizedBox(height: 30),
              Container(
                height: 15,
                color: Colors.blueGrey,
                child: Divider(),
              ),
               Padding(padding: EdgeInsets.all(40)),
              Text('REGISTER', style: TextStyle (fontSize: 25, color: Colors.grey)),
             
            ],
          ),
        )),

    );
    
  }
}





class Formulaire extends StatefulWidget {
  @override
  _FormulaireState createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {

final _keyForm = GlobalKey< FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      
appBar: AppBar(title: Text('SE CONNECTER', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold),
),
backgroundColor: Colors.brown[400],
       
),

body: Column(
  children: [
        Container(
    decoration: BoxDecoration(color: Colors.brown[100],),
      margin: EdgeInsets.only(left:20, top: 40),
       width: 150,
       height: 150,
      child: Image.asset("images/profile.png"),
    ),
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown[400]),
        borderRadius: BorderRadius.circular(60)),
      margin: EdgeInsets.only(top: 30),
      
child: TextField(
  decoration: InputDecoration(border: OutlineInputBorder(),
  labelText: 'Nom et Prenom' ),
)




    ),

    Container( 

      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown[400]),
        borderRadius: BorderRadius.circular(60)),
      margin: EdgeInsets.only(top: 30),
      
child: TextField(
  decoration: InputDecoration(border: OutlineInputBorder(),
  labelText: 'E-mail' ),
)),


Container(

decoration: BoxDecoration(
        border: Border.all(color: Colors.brown[400]),
        borderRadius: BorderRadius.circular(60)),
margin: EdgeInsets.only(top: 30),
child: TextField(
  obscureText: true,
  decoration: InputDecoration(border: OutlineInputBorder(),
  labelText: 'MotDePasse' ),
)),


Container( 
      margin: EdgeInsets.only(top:80),
       width: 200,
       height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.brown[400]),
        onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Seconde()),
  );
}, child: Text('Connexion',style: TextStyle(fontSize: 18),))
    ),
  ],
)

 




    );
  }
}