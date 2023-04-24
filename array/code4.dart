
//reverse
void main() {
  List<int> arr = [1, 2, 3, 5,4, 6, 32, 5];
  int len = arr.length;
  for (int i = 0; i < len / 2; i++) {
    int temp = arr[i];
    arr[i] = arr[len - 1 - i];
    arr[len - 1 - i] = temp;
  }
  print(arr);
}
