//Given a string s, check if palindrome

import 'dart:io';

void main() {
  String str = stdin.readLineSync()!;
  int len = str.length;
  for (int i = 0; i < len / 2; i++) {
    if (str[i] != str[len - 1 - i]) {
      print("Not Palindrome");
      return;
    }
  }
  print("Palindrome");
}
