import 'package:flutter/material.dart';
import 'package:udm/pages/start/widget/dice_roler.dart';

var startAligment = Alignment.topRight;
var endAligment = Alignment.bottomLeft;

//Cara Ke 2 dalam intance variabel pada gradientcontainer
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override 
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

//Cara Pertama (1) dalam intance variabel pada gradientcontainer

// class GradientContainer extends StatelessWidget{
//   const GradientContainer ({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               begin: startAligment,
//               end: endAligment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText('Bagas Djunaedi'),
//           ),
//         );
//   }
// }