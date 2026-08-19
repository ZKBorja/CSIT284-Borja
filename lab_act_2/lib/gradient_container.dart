import 'package:flutter/material.dart';
import 'styled_text.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});
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
            child: StyledText('Borja'),
          ),
        );
  }
}