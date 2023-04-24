//Find the largest three distinct elements in an array

void main() {
  int first;
  int second;
  int third;
  first = second = third = -double.maxFinite.toInt();

  List<int> arr = [1, 4, 3, 2, 125, 7, 33, 4, 125, 0];

  if (arr.length < 3) {
    print(" Invalid Input ");
    return;
  }

  for (int i = 0; i < arr.length; i++) {
    if (first < arr[i]) {
      third = second;
      second = first;
      first = arr[i];
    } else if (second < arr[i] && first != arr[i]) {
      third = second;
      second = arr[i];
    } else if (third < arr[i] && second != arr[i] && first!=arr[i]) {
      third = arr[i];
    }
   // print("$first, $second, $third");
  }
  print("Array is $arr");
  print("Greatest three elements are : $first>$second>$third");
}
