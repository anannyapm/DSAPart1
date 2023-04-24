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

  reverse() {
    Node? prevNode = null;
    Node? currentNode = head;
    Node? nextNode = null;

    while (currentNode != null) {
      nextNode = currentNode.next;
      currentNode.next = prevNode;
      prevNode = currentNode;
      currentNode = nextNode;
    }
    head = prevNode;
    display();
  }
}

void main() {
  LinkedList list = LinkedList();
  list.add(25);
  list.add(58);
  list.add(10);
  list.add(26);
  list.add(78);
  list.add(3);
  list.display();
  print("------------------");
  list.reverse();
}
