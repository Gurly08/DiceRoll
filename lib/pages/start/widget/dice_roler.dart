import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); //dimana randomizer disini berfungsi untuk menyimpan functio "Random()",  
				                    //agar menjadi wadah data akhir yang tersedia secara global di file ini.
 
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
var currentDiceRoll = 2; //currentDiceRoll disini bisa dinamakan bebas, dan = 2(angka yang pertama muncul adalah 2).

void rollDice() {
  setState(() {
   currentDiceRoll = randomizer.nextInt(6) + 1;
  });
}

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png", //memasukan anonym method "currentDiceRoll" dan "$" untuk menampilkan angka atau gambar random dadu.
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice, //dimana jika button ini di klik makaa akan memberikan perubahan ke dalam UI yang ada. 
          style: TextButton.styleFrom(
              foregroundColor: Colors.yellow,
              textStyle: const TextStyle(
                fontSize: 28.5,
              )),
          child: const Text(
            'Roll dice',
          ),
        ),
      ],
    );
  }
}
