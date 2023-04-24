import 'dart:io';

class Node<T> {
  T value;
  Node? next;

  Node({required this.value});
}

class LinkedList {
  Node? head;
  Node? tail;

  add(var NodeVal) {
    Node? newnode = Node(value: NodeVal);
    newnode.next = null;
    if (head == null) {
      head = newnode;
    } else {
      tail!.next = newnode;
    }
    tail = newnode;
  }

  display() {
    if (head == null) {
      print("Empty LL");
      return;
    } 

      Node? temp = head;
      while (temp != null) {
        stdout.write("${temp.value} -> "); 
        temp = temp.next;
      }
      if (temp == null) {
        stdout.write("null\n");
      }
    
  }
}

void main() {
  LinkedList list = LinkedList();
  List array = [1,2,5,4,66,5,89];
  for (var val in array) {
    list.add(val);
  }
  list.display();
}
