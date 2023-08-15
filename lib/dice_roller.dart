import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  @override
  var activeImage = "assets/dice-1.png";

  void rolldice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeImage = "assets/dice-$diceRoll.png";
    });
  }

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeImage, width: 200),
        ElevatedButton(onPressed: rolldice, child: const Text("Roll Dice"))
      ],
    );
  }
}
