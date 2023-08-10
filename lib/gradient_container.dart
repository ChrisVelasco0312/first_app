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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll dice'),
            )
          ],
        ),
      ),
    );
  }
}
