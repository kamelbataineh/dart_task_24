import 'dart:io';
import 'class_main.dart';

int id = 0;

class Products extends Main {
  static List<Products> product_list = [ 
 Products("name1"),
 Products("name2"),
 Products("name3"),
 Products("name4"),
 Products("name5"),
 Products("name6")
  ];
  Products(String name) : super(name, ++id);

  @override
  void addProduct() {
    print("enter add ");
    String add = stdin.readLineSync()!;
    Products newProduct = Products(add);
    product_list.add(newProduct);
    print("Product add: ID ${newProduct.id}, Name: ${newProduct.name}");
  }

  @override
  void viewProduct() {
    print("Product ID: $id          Product NAME: $name");
  }
}
