//Write a function to replace each alphabet in the given string with another alphabet occurring at the n-th position from each of them.

replace(String str, int pos) {
  int i = 0;
  while (i < str.length - pos) {
    str = str.substring(0, i) + str[i + pos] + str.substring(i + 1, str.length);
    i++;
  }
  print(str);
}

void main(List<String> args) {
  replace("Ananyapm", 3);
}
