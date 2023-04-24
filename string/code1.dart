import 'dart:async';
import 'dart:io';

void main() {
  String str1 = stdin.readLineSync()!.toLowerCase();
  String str2 = stdin.readLineSync()!.toLowerCase();

  int checkAnagram(String s1, String s2) {
    if (str1.length != str2.length) {
      //print("len mismatch");

      return -1;
    }
    Map checkfreq = Map();
    for (int i = 0; i < str1.length; i++) {
      if (!checkfreq.containsKey(str1[i])) {
        checkfreq[str1[i]] = 1;
      } else {
        checkfreq[str1[i]]++;
      }
    }

    for (int i = 0; i < str1.length; i++) {
      if (!checkfreq.containsKey(str2[i])) {
        return -1;
      } else {
        checkfreq[str2[i]]--;
      }
    }

    for (var val in checkfreq.values) {
      if (val != 0) {
        return -1;
      }
    }
    return 1;
  }

  checkAnagram(str1, str2)==1?print("Match!Its Anagram"):print("Not Anagram");
  
}
