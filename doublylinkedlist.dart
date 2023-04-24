import 'dart:io';

class Node<T> {
  T value;
  Node? next;
  Node? prev;

  Node({required this.value});
}

class LinkedList {
  Node? head;
  Node? tail;

  void push(var nodeVal) {
    Node? newNode = Node(value: nodeVal);
    if (head != null) {
      head!.prev = newNode;
      newNode.next = head;
    }
    head = newNode;
    if (tail == null) {
      tail = head;
    }
  }

  void append(var nodeVal) {
    Node? newNode = Node(value: nodeVal);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void display() {
    if (head == null) {
      print("Empty");
      return;
    }
    Node? tempNode = head;
    while (tempNode != null) {
      stdout.write("${tempNode.value} -> ");
      tempNode = tempNode.next;
    }
    if (tempNode == null) {
      stdout.write("null\n");
    }
  }

  void reverse() {
    if (head == null) {
      print("Empty");
      return;
    }
    Node? tempNode = tail;
    while (tempNode != null) {
      stdout.write("${tempNode.value} -> ");
      tempNode = tempNode.prev;
    }
    if (tempNode == null) {
      stdout.write("null\n");
    }
  }

  void delete(var nodeVal) {
    if (head == null) {
      print("empty list");
    } else {
      Node? tempNode = head;
      if (tempNode!.value == nodeVal) {
        Node? next = tempNode.next;
        next?.prev = null;
        head = tempNode.next;
        return;
      }
      while (tempNode != null && tempNode.value != nodeVal) {
        tempNode = tempNode.next;
      }
      if (tempNode == null) {
        print("element not found");
      }
      if (tempNode == tail) {
        Node? prev = tempNode!.prev;
        prev!.next = null;
        tail = prev;
        return;
      }

      tempNode!.prev!.next = tempNode.next;
      tempNode.next!.prev = tempNode.prev;
    }
  }

  void insertAfter(var nextToVal, var val) {
    if (head == null) {
      print("Empty LL");
    } else {
      Node? newNode = Node(value: val);
      Node? tempNode = head;
      while (tempNode != null && tempNode.value != nextToVal) {
        tempNode = tempNode.next;
      }
      if (tempNode == null) {
        print("Element not found");
        return;
      }
      if (tempNode == tail) {
        tail?.next = newNode;
        newNode.prev = tail;
        tail = newNode;
        return;
      }
      Node? nextNode = tempNode.next;
      tempNode.next = newNode;
      newNode.prev = tempNode;
      newNode.next = nextNode;
      nextNode?.prev = newNode;
      
    }
  }
}

void main() {
  final list = LinkedList();

  String cont = "y";
  do {
    print(
        "Enter your choice\n1.Push 2.Append 3.Delete 4.Display 5.Insert 6.Reverse\n----------------------------------");
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
        {
          print("Enter value");
          int val = int.parse(stdin.readLineSync()!);
          list.delete(val);
          break;
        }
      case 4:
        {
          list.display();
          break;
        }
      case 5:
        {
          print("Enter next to value");
          int nextToVal = int.parse(stdin.readLineSync()!);
          print("Enter value to insert");
          int val = int.parse(stdin.readLineSync()!);
          list.insertAfter(nextToVal, val);
          break;
        }
      case 6:
        {
          list.reverse();
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
