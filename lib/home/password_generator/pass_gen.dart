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

    if(containsCapitalL) {
      for(int i = 0; i < length; i++) {
        String char =
          Chars.capitalLetters[random.nextInt(Chars.capitalLetters.length)];
        password.add(char);
      }
    }

    if(containslowercaseL) {
      for(int i = 0; i < length; i++) {
        String char =
          Chars.lowercaseLetters[random.nextInt(Chars.lowercaseLetters.length)];
        password.add(char);
      }
    }

    if(containsSpecialChars) {
      for(int i = 0; i < length; i++) {
        String char =
          Chars.specialCharacters[random.nextInt(Chars.specialCharacters.length)];
        password.add(char);
      }
    }

    if(containsNumbers) {
      for(int i = 0; i < length; i++) {
        String char = Chars.numbers[random.nextInt(Chars.numbers.length)];
        password.add(char);
      }
    }

    return password.join('');
  }

  
}