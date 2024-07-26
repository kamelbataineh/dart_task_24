import 'dart:io';

import 'class_pruduct.dart';

class Customer extends Products {
  List<Products> cart = [];
  late int phno;
  late String address;
  
  Customer(this.address, this.phno, String name) : super(name);


  @override
  void viewProduct() {
    print("Product List:");
    Products.product_list.forEach((product) {
      print("Product ID: ${product.id}, Product NAME: ${product.name}");
    });
  }




 @override 
void BuyPruduct(){
print("object");



}



 }
void main(List<String> args) {
 stdout.write("add name:");
 String name =stdin.readLineSync()!;
 
stdout.write("add phne:");
  int phno =int.parse(stdin.readLineSync()!);
 stdout.write("add adress:");
  String address1 =stdin.readLineSync()!;
 
  Customer customer=Customer(address1, phno, name);
print("name:${customer..name}   address:${customer.address}   phno:${customer..phno}");
}




// Assuming Products class is defined somewhere
// class Products {
//   String name;
//   static List<Products> product_list = []; // Example list

//   Products(this.name);

//   void viewProduct() {
//     // This method can be overridden by subclasses
//   }
// }

// // Customer class
// class Customer {
//   List<Products> cart = [];
//   late int _phno;
//   late String _address;
//   String name; // Assuming name is relevant for a customer

//   Customer(this._address, this._phno, this.name);

//   // Method to view all products
//   void viewProducts() {
//     print("Product List:");
//     for (var product in Products.product_list) {
//       print("Product ID: ${product.hashCode}, Product Name: ${product.name}");
//     }
//   }

//   // Method to buy products
//   void buyProduct(Products product) {
//     cart.add(product);
//     print("Added ${product.name} to the cart.");
//   }

//   // Optional: Getters for private fields
//   String get address => _address;
//   int get phoneNumber => _phno;
// }
// void main() {
//   // Creating some products
//   Products.product_list.add(Products("Laptop"));
//   Products.product_list.add(Products("Smartphone"));
//   Products.product_list.add(Products("Tablet"));

//   // Creating a customer
//   Customer customer = Customer("123 Main St", 1234567890, "John Doe");

//   // Customer views available products
//   customer.viewProducts();

//   // Customer buys a product
//   var productToBuy = Products.product_list[0]; // Example: Buying the first product (Laptop)
//   customer.buyProduct(productToBuy);

//   // Display cart contents
//   print("Items in cart:");
//   for (var product in customer.cart) {
//     print("Product Name: ${product.name}");
//   }
// }