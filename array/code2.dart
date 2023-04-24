void main() {
  int count;
  List array = [10, 0, 10, 10, 1, 2, 5, 3, 6, 2, 3, 5, 10];
  List tempList = List.generate(array.length, (index) => -1);
  int len = array.length;

  for (int i = 0; i < len; i++) {
    count = 1;

    if (tempList[i] == -1) {
      for (int j = i + 1; j < len; j++) {
        if (array[i] == array[j]) {
          count++;

          tempList[j] = 1;
        }
      }

      print("Count of ${array[i]} is $count");
    }
  }
}
