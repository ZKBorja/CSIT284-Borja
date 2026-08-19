import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  
  @override
  Widget build(context) {
    return Text(
      'Hello world',
      style: TextStyle(
        fontSize: 38,
        color: Colors.blue,
      ),
    );
  }
}