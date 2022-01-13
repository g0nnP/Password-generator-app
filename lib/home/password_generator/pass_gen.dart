import 'dart:math';

import 'package:pass_generator/home/password_generator/chars.dart';

class PassGenerator {
  String passwordGenerator(
    int length,
    bool containsCapitalL,
    bool containslowercaseL,
    bool containsSpecialChars,
    bool containsNumbers
  ) {

    List<String> password = List.empty();
    final Random random = Random();

    if(containsCapitalL) _generatorLoop(length, password, Chars.capitalLetters);

    if(containslowercaseL) _generatorLoop(length, password, Chars.lowercaseLetters);

    if(containsSpecialChars) _generatorLoop(length, password, Chars.specialCharacters);

    if(containsNumbers) _generatorLoop(length, password, Chars.numbers);

    return password.join('');
  }

  void _generatorLoop(
    int length,
    List<String> pass,
    List<String> chars) {
    
    final Random random = Random();
    for(int i = 0; i < length; i++) {
      String char = chars[random.nextInt(chars.length)];
      pass.add(char);
    }
  }
}