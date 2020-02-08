import 'package:flutter/material.dart';
import 'dart:math';

class Dicee extends StatefulWidget {
  

  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  //Creer une liste d'images de type String
 static List <String> tabImage = ["assets/dice1.png","assets/dice2.png","assets/dice3.png","assets/dice4.png","assets/dice5.png","assets/dice6.png"];

 static Random random = new Random();
  int rand = 0;
  int rand1 = 0;
//la methode permet de changer l'image
  void changeimage()
  {
    setState(() {
      rand = random.nextInt(tabImage.length);
      rand1 = random.nextInt(tabImage.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: Text("Jeux Dicee"),
      elevation: 0.0,
      backgroundColor: Colors.purple,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset("assets/dicee_logo.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(tabImage[rand]),
              Image.asset(tabImage[rand1]),
            ],
            
          ),
          RaisedButton(
                child: Text("Click"),
                onPressed: () => changeimage(),
                color: Colors.cyan,
              ),
        ],
      ),
    );
  }
}