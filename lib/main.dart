import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var randomGenerator = Random();
  int leftBtn= 1;
  int rightBtn =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftBtn = randomGenerator.nextInt(6)+1;

                  });
                },
                child: Image(
                  image: AssetImage('images/dice$leftBtn.png'),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      rightBtn  = randomGenerator.nextInt(6)+1;

                    });

                  },
                  child: Image.asset('images/dice$rightBtn.png'),
                ),
              )
          ),

        ],
      ),
    );
  }
}

