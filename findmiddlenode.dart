import 'dart:io';

class Node<T> {
  T value;
  Node? next;

  Node({required this.value});
}

class LinkedList {
  Node? head;
  Node? tail;
  int nodeCount = 0;

  void push(var nodeVal) {
    Node? newnode = Node(value: nodeVal);
    newnode.next = head;
    head = newnode;
    if (tail == null) {
      tail = head;
    }
    nodeCount++;
  }

  void append(var nodeVal) {
    Node? newnode = Node(value: nodeVal);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
    nodeCount++;
  }

  void display() {
    if (head == null) {
      print("empty");
      return;
    } else {
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

  void findMiddle() {
    int mid = nodeCount ~/ 2;
    Node? temp = head;
    while (mid != 0) {
      temp = temp?.next;
      mid--;
    }
    print(temp?.value);
  }
}

void main() {
  final list = LinkedList();

  String cont = "y";
  do {
    print(
        "Enter your choice\n1.Push 2.Append 3.Display 4.Find Middle\n----------------------------------");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        {
          print("Enter value");
          int val = int.parse(stdin.readLineSync()!);
          list.push(val);
          break;
        }
      case 2:
        {
          print("Enter value");
          int val = int.parse(stdin.readLineSync()!);
          list.append(val);
          break;
        }
      case 3:
        list.display();
        break;

      case 4:
        {
          list.findMiddle();
          break;
        }
      case 0:
        cont = 'n';
        break;
      default:
        print("invalid choice");
    }
  } while (cont == 'y');
}
