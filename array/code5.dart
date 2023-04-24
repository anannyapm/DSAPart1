void main(List<String> args) {
  List<int> arr = [4, 4, 4];
  int del = 4;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == del) {
      for (int j = i; j < arr.length - 1; j++) {
        arr[j] = arr[j + 1];
      }
      arr.length--;
      i--;
    }
  }

  print(arr);
}
