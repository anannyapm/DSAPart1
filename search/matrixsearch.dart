/* 
Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:
Integers in each row are sorted from left to right.
The first integer of each row is greater than the last integer of the previous row.
*/

import 'dart:io';

bool binarySearch(List<int> arr, int left, int right, int searchval) {
  if (left <= right) {
    int mid = (left + right) ~/ 2;

    if (arr[mid] == searchval) {
      return true;
    }
    if (arr[mid] < searchval) {
      return binarySearch(arr, mid + 1, right, searchval);
    }
    return binarySearch(arr, left, mid - 1, searchval);
  }
  return false;
}

void main() {
  List<List<int>> matrix = [
    [1, 2, 3, 4],
    [12, 15, 16, 17],
    [25, 50, 52, 62]
  ];
  int search = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < matrix.length; i++) {
    if (binarySearch(matrix[i], 0, matrix[i].length - 1, search)) {
      print("Found search value $search in sub Matrix ${matrix[i]}");
      return;
    }
    
  }
  print("Not found");
}
