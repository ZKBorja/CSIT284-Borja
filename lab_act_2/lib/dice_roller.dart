 import 'package:flutter/material.dart';
 import 'dart:math';
class DiceRoller extends StatefulWidget{
const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollersState();
  }
}
class _DiceRollersState extends State<DiceRoller> {
  final randomizer = Random();
var currentDiceImage = 'assets/dice-images/dice-2.png';
    void rollDice() {
  setState(() {
    int num = randomizer.nextInt(6) + 1;
    currentDiceImage = 'assets/dice-images/dice-$num.png';
  });
}

  @override
  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
            Image.asset(
              width: 150,
              currentDiceImage),
              SizedBox(height: 50,),
            TextButton(onPressed: rollDice,
             child: Text(
              style: TextStyle(fontSize:  20, color: Colors.blueAccent),
              "Roll Dice")
                )
              ],
          );
  }
}