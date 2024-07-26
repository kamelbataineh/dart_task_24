import 'class_pruduct.dart';
import 'class_customar.dart';
import 'dart:io';

var run = 0;

abstract class Main {
  late int _id;
  late String _name;
  Main(String name, int id) {
    _id = id;
    _name = name;
  }
  String get name => _name;
  int get id => _id;
  set name(String newName) {
    _name = newName;
  }

////////////////////////
  void viewProduct();

  void addProduct();
}

void main(List<String> args) {
  Products products = Products("null");
  while (true) {
    print("""
1-admin.
2-customer
""");

    stdout.write("enter nubmer :");
    int input_1_2 = int.parse(stdin.readLineSync()!);
    switch (input_1_2) {
      case 1:
        {
          print("""
    1. Add Product
    2. View Products
    3. Exit
    """);
          stdout.write("enter number:");
          String input = stdin.readLineSync()!;
          int input_num;
          try {
            input_num = int.parse(input);
            switch (input_num) {
              case 1:
                products.addProduct();
                break;
              case 2:
                Products.product_list.forEach((product) {
                  product.viewProduct();
                });
                break;
              case 3:
                print("esc...");
                return;
              default:
                print("Invalid option, please try again.");
            }
          } catch (e) {
            print("return");
          }
          break;
        }
      case 2:
        {
          stdout.write("add name:");
          String name = stdin.readLineSync()!;

          stdout.write("add phne:");
          int phno = int.parse(stdin.readLineSync()!);

          stdout.write("add adress:");
          String address1 = stdin.readLineSync()!;

          Customer customer = Customer(address1, phno, name);
          print(
              "name:${customer..name}   address:${customer.address}   phno:${customer..phno}");

          customer.viewProduct();
          break;
        }
      case 3:
        {
          print("esc...");
          return;
        }
      default:
        print("Invalid option, please try again.");
    }
  }
}
