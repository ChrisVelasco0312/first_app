import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';

const beginAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors, {super.key});

  // additional constructor function to hardcode colors
  GradientContainer.purple({super.key})
      : gradientColors = [
          const Color.fromARGB(255, 110, 10, 224),
          const Color.fromARGB(255, 199, 9, 232)
        ];

  final List<Color> gradientColors;

  void rollDice() {
    //...
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
