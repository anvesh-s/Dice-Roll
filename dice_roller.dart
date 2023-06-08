import 'package:flutter/material.dart';

import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    //in StatefulWidget we create the method called createState()
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //when using StatefulWidget we'll always work with 2 classes. - private class _

  var currentDiceRoll =
      2; // use stateful widget when data internally changes, but if you only need a static output based on the inputs you give then stateless widget
  var randomizer = Random();

  void rollDice() {
    setState(() {
      // used to update UI
      currentDiceRoll = randomizer.nextInt(6) + 1; //1-6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // to put the dice on center
      children: [
        Image.asset(
          "lib/images/dice$currentDiceRoll.png",
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
