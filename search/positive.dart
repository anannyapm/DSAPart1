int binarySearch(List<int> arr) {
  int left = 0;
  int right = arr.length - 1;
  while (right >= left) {
    int mid = (left + right) ~/ 2;

    if (arr[mid] == 0) {
      return mid;
    } else if (arr[mid] > 0) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }

  return -1;
}

void main() {
  List<int> array = [-11, -9, -8, -4,0, 1, 2, 3, 4, 5, 6];
  int result = binarySearch(array);
  print(result);
  print("Number of positive elements: ${(array.length - 1) - result}");
}
