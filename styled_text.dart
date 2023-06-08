import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text,{super.key}); // constructor function accepting string text from styled_text and super from Statless widget

  final String text; //storing text as argument
//this is called class variable 
//this tells dart that we wanna use this variable that is defined in this class
//this tells dart to automatically look for an equially named variable(text) in this class

  @override
  Widget build(context) {
    return Text(
      text,  //using argument
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
