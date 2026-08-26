import 'package:flutter/material.dart';
import 'package:lab_act_2/dice_roller.dart';


class GradientContainer extends StatelessWidget{
  const GradientContainer(this.colors, {super.key});
    final List<Color> colors;

    

  @override
  Widget build(context){
  return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                Colors.red,
                Colors.yellow
              ])
            ),
          child: Center(
            child: DiceRoller()
        ),
    );
  }
}