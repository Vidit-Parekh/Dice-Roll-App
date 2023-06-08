import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var changenum = 'assets/images/dice-1.png';
  void change_num() {
    var diceroll = Random().nextInt(6) + 1;
    setState(() {
      changenum = 'assets/images/dice-$diceroll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          changenum,
          width: 165,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: change_num,
          style: ElevatedButton.styleFrom(
            /*padding: const EdgeInsets.only(
                  top: 20,
                ),*/
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 15,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
