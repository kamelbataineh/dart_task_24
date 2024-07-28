import 'dart:io';
import 'class_product.dart';
//import 'class_customer.dart';
import 'claas.dart';

int playid = 0;

class Admin extends Shop {
  late int _id;
  late String _name;
  double _price;
  Admin(this._name, this._price) : super(_name, _price) {
    _id = ++playid;
  }
  int get id => _id;
  set id(int newid) {
    _id = newid;
  }

  String get name => _name;
  set name(String newName) {
    _name = newName;
  }

  void viewProduct() {
    if (Shop.product_list.isEmpty) {
      print("No products available.");
      return;
    }
    print("Available Products:");
    for (var product in Shop.product_list) {
      print("${product.name} ${product.price}");
    }
  }

  void addProduct() {
    stdout.write("Enter product name: ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter product price: ");
    double price = double.parse(stdin.readLineSync()!);
    Shop.product_list.add(Products(name, price));
    print("Product added successfully.");
  }

  void modifyProduct() {
    viewProduct();
    stdout.write("Enter the name of the product to modify: ");
    String oldName = stdin.readLineSync()!;
    var product =
        Shop.product_list.firstWhere((element) => element.name == oldName);
    if (product == null) {
      print("Product not found.");
      return;
    }

    stdout.write("Enter new product name: ");
    String newName = stdin.readLineSync()!;
    stdout.write("Enter new product price: ");
    double newPrice = double.parse(stdin.readLineSync()!);
    product.name = newName;
    product.price = newPrice;
    print("Product updated successfully.");
  }

  void confirmDelivery() {
    print("Order confirmation:");
  }

  void makeShipment() {
    print("Processing shipment:");
  }

  void main(List<String> args) {
    Admin admin = Admin("name", price);

    while (true) {
      print("""
1. View Products
2. Add Product
3. Modify Product
4. Confirm Delivery
5. Make Shipment
6. Exit
""");
      stdout.write("Enter option (1-6): ");
      String input = stdin.readLineSync()!;
      int input_number;

      try {
        input_number = int.parse(input);
        switch (input_number) {
          case 1:
            admin.viewProduct();
            break;

          case 2:
            admin.addProduct();
            break;

          case 3:
            admin.modifyProduct();
            break;

          case 4:
            admin.confirmDelivery();
            break;

          case 5:
            admin.makeShipment();
            break;

          case 6:
            print("Exiting...");
            return;

          default:
            print("Invalid option. Please enter a number between 1 and 6.");
        }
      } catch (e) {
        print("Invalid input. Please enter a valid number.");
      }
    }
  }
}
