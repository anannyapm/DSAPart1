class Node<T> {
  T value;
  Node? next;
  Node? prev;
  Node({required this.value});
}

class LinkedList {
  Node? head;
  Node? tail;
  int nodeCount = 0;

  void insert(var value) {
    Node? newNode = Node(value: value);
    if (head == null) {
      head = newNode;
    } else {
      newNode.prev = tail;
      tail?.next = newNode;
    }
    tail = newNode;
    nodeCount++;
   
  }

  void addLL() {
    List out = [];
    Node? start = head;
    Node? end = tail;
    int mid = nodeCount ~/ 2;
    if (start == null && end == null) {
      print("No values");
    }
    else if (start == end) {
      out.add(start?.value);
    }
  else{
    while (mid != 0) {
      

      out.add(start?.value + end?.value);

      start = start?.next;
      end = end?.prev;
      mid--;
    }
  }
    

    

    print(out);
  }
}

void main() {
  LinkedList list = LinkedList();
  list.insert(25);
  list.insert(85);
  //list.insert(6);
  list.insert(16);
  list.insert(95);
  list.insert(12);
  list.addLL();
}
