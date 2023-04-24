void main(List<String> args) {
//concatenation
  print("concatenation");

  String a = "abcdefg";
  String b = "xyz";
  a = a + b;
  print(a);
  int j = 0;

  //substring
  print("--------------------------\nsubstring check");

  int i = 0;
  int f = 0;
  for (i = 0; i < a.length; i++) {
    int j = 0;
    while (j < b.length) {
      if (a[i] == b[j]) {
        //print("$i pos match");
        i++;
      } else {
        break;
      }
      j++;
    }
    if (j == b.length) {
      print("yes substring");
      f = 1;
      break;
    }
  }
  if (f == 0) {
    print("not found");
  }

  //comparison
  print("--------------------\ncomp");

  String a2 = "abcdefgxyo";
  if (a.length != a2.length) {
    print("Not equal");
  } else {
    for (i = 0; i < a.length; i++) {
      if (a[i] != a2[i]) {
        print("not same");
        break;
      }
    }
    if (i == a.length) {
      print(" equal");
    }
  }

  //modify
  print("------------------\nmodify");

  String change = 'def';
  String changewith = "dfg";
  for (i = 0; i < a.length; i++) {
    j = 0;
    while (j < change.length) {
      print("$i $j");
      if (a[i] == change[j]) {
        //print("$i pos match");
        i++;
      } else {
        break;
      }
      j++;
    }
    if (j == change.length) {
      print("yes substring");
      f = 1;
      print(i);
      break;
    }
  }
  
  int start = i - j;
  a = a.substring(0, start) + changewith + a.substring(i, a.length);
  print(a);
}
