import 'package:flutter/material.dart';
import 'package:flutter_dice_roller/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 130, 145, 230),
        color2 = const Color.fromARGB(255, 64, 87, 216),
        color3 = const Color.fromARGB(255, 153, 4, 223);

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2, color3],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key required this.Colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors, 
//           begin: startAlignment, 
//           end: endAlignment),
//       ),
//       child: const Center(
//         child: StyledText('Test text'),
//       ),
//     );
//   }
// }

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key});


//   @override
//   Widget build(context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(colors: [
//           Color.fromARGB(255, 130, 145, 230),
//           Color.fromARGB(255, 64, 87, 216),
//           Color.fromARGB(255, 153, 4, 223),
//         ], begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(
//         child: StyledText('Test text'),
//       ),
//     );
//   }
// }

