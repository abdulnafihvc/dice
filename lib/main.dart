import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade900,
        appBar: AppBar(backgroundColor: const Color.fromARGB(255, 8, 161, 13)),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
} 

class _DicePageState extends State<DicePage> {
  var diceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.green.shade900,
              ),
              onPressed: () {
                setState(() {
                  print('$diceNumber Butten Pressed');
                  diceNumber = Random().nextInt(6)+1;
                });
                
              },
              child: Image.asset('assets/dice$diceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

