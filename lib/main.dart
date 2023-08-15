// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 79, 19, 183),
            const Color.fromARGB(255, 17, 4, 39)),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  GradientContainer(this.clr1, this.clr2, {super.key});
  final Color clr1;
  final Color clr2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [clr1, clr2],
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
