import 'dart:io';

class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value});
}

class LinkedList {
  Node? head;
  Node? tail;

  void display() {
    if (head == null) {
      print("Empty Linked List");
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

    return;
  }

//add to first
  push(var Nodeval) {
    Node newNode = Node(value: Nodeval);

    newNode.next = head;
    head = newNode;
    if (tail == null) {
      tail = head;
      //tail will stay at head as we insert at front
      //print(tail!.value);
    }
  }

  //add to end
  append(var Nodeval) {
    Node newNode = Node(value: Nodeval);
    newNode.next = null;
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  //add in between

  insertAfter(var nextVal, var nodeVal) {
    Node? tempNode = head;
    Node? newNode = Node(value: nodeVal);
    while (tempNode != null && tempNode.value != nextVal) {
      tempNode = tempNode.next;
    }
    if (tempNode == null) {
      print("Next to val not found");
      return;
    }
    if (tempNode == tail) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }

    newNode.next = tempNode.next;
    tempNode.next = newNode;
  }

  insertBefore(var prevVal, var nodeVal) {
    Node? newNode = Node(value: nodeVal);
    Node? tempNode = head;
    Node? prevNode = null;

    while (tempNode != null && tempNode.value != prevVal) {
      prevNode = tempNode;
      tempNode = tempNode.next;
    }
    if (tempNode == null) {
      print("Next to val not found");
      return;
    }
    if (tempNode == head) {
      newNode.next = head;
      
      head = newNode;
      return;
    }

    newNode.next = prevNode!.next;
    prevNode.next = newNode;
  }

  //delete
  delete(var nodeVal) {
    Node? tempNode = head;
    Node? prevNode = null;
    if (head == null) {
      print("Cannot Delete!No data in linkedlist");
    } else {
      if (tempNode!.value == nodeVal) {
        head = tempNode.next;
        return;
      }
      while (tempNode != null && tempNode.value != nodeVal) {
        prevNode = tempNode;
        tempNode = tempNode.next;
      }

      if (tempNode == null) {
        print("Element not found");
        return;
      }

      if (tempNode == tail) {
        tail = prevNode;
        tail!.next = null;
        return;
      }

      prevNode?.next = tempNode.next;
    }
  }
}

void main() {
  final list = LinkedList();

  String cont = "y";
  do {
    print(
        "Enter your choice\n1.Push 2.Append 3.Delete 4.Display 5.InsertAfter 6.InsertBefore\n----------------------------------");
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
          print("Enter prev to value");
          int nextToVal = int.parse(stdin.readLineSync()!);
          print("Enter value to insert");
          int val = int.parse(stdin.readLineSync()!);
          list.insertBefore(nextToVal, val);
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
