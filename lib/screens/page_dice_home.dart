import 'package:flutter/material.dart';
import 'package:roll_dice/widgets/dice_face.dart';
import 'package:roll_dice/functions/roll_dice.dart';

class DiceHomePage extends StatefulWidget {
  const DiceHomePage({Key? key}) : super(key: key);

  @override
  State<DiceHomePage> createState() => _DiceHomePageState();
}

class _DiceHomePageState extends State<DiceHomePage> {
  int diceRolledValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Roll the Dice',
                style: TextStyle(
                  fontFamily: 'Product-Sans',
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: DiceFace(value: diceRolledValue),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    diceRolledValue = rollDice();
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  minimumSize: MaterialStateProperty.all<Size>(
                    const Size(double.infinity, 60),
                  ),
                ),
                child: const Text('Roll'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
