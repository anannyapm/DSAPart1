numPrint(int start,int limit) {
  
  if (start <= limit) {
    print("$start ");
    numPrint(start + 1,50);
  }
}

void main() {
  numPrint(1,50);
}
