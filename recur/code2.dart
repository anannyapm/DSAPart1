import 'dart:io';

void main() {
  int num, sum;

  num = int.parse(stdin.readLineSync()!);

  sum = DigitSum(num); 

  print("The Sum of digits $sum");

}

int DigitSum(int n) {
  if (n == 0) return 0;

  return ((n % 10) + DigitSum(n ~/ 10)); 
}
