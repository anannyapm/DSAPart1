import 'dart:io';

void main() {
  int num;
  
  bool isprime;

  num = int.parse(stdin.readLineSync()!);

  isprime = isPrime(num,2);

  if (isprime == true)
    print("The number is a prime number");
  else
    print("The number is not a prime number");
 
}

bool isPrime(int n, int i) {
  // Base cases
  if (n <= 2) return (n == 2) ? true : false;
  if (n % i == 0) return false;
  if (i * i > n) return true;

  // Check for next divisor
  return isPrime(n, i + 1);
}
