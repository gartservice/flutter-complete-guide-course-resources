import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  
  
  int diceValue = Random().nextInt(6) + 1; //generate a random number between 1 and 6
  //concatenate the diceValue to the base path
  String activeDiceImage = "assets/images/dice-$diceValue.png";
  
  void rollDice() {
    
    setState(() {
      activeDiceImage = 'assets/images/dice-5.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
