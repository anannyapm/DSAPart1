void main(List<String> args) {
  String s1 = "sun sun rises in the the east";
  var strlist = s1.split(" ");
  String out = "";
  int flag = 0;
  int i;
  for (i= 0; i < strlist.length - 1; i++) {
    if (strlist[i] != strlist[i + 1]) {
      out += strlist[i];
    }
  }
  out += strlist[i];
  print(out);
}
