//return all strings whose length less than five


void main() {
  List<String> findStringLen(List<String> array) {
    int i = 0;
    List<String> outputlist = [];
    while (i < array.length) {
      if (array[i].length <= 5) {
        outputlist.add(array[i]);
      }
      i++;
    }
    return outputlist;
  }

  List<String> stringArray = [
    'Hello',
    'This',
    'is',
    'test',
    'string',
    'for',
    'checking'
  ];
  print(findStringLen(stringArray));
}
