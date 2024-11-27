import 'dart:math';

String generateRandomId(int length) {
  const characters = 'abcdefghijklmnopqrstuvwxyz0123456789';

  Random random = Random();

  return List.generate(
      length, (index) => characters[random.nextInt(characters.length)]).join();
}
