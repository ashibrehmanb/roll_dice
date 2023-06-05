import 'dart:math';

int rollDice() {
  final Random random = Random();
  return random.nextInt(6) + 1;
}
