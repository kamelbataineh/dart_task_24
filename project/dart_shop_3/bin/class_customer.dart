import 'dart:io';
import 'claas.dart';

int playid = 0;

class Customer {
  List<Shop> cart = [];
  late double total;
  late int _id;
  late double _phno;
  late String _name;
  late String _address;
  Customer(this._address, this._phno, this._name) {
    _id = ++playid;
  }
  String get name => _name;
  String get address => _address;
  double get phno => _phno;

//////////////////////////////

  void viewcart() {
    print("___________________________");
    for (var i = 0; i < cart.length; i++) {
      print("${cart[i].id}.. ${cart[i].name}       .... \$${cart[i].price}");
    }
  }

  addcart(int n) {
    Shop products = Shop.product_list.firstWhere((element) => element.id == n);
    Shop value = products;
    cart.add(value);
  }

//////////////
  void deletecart(int id) {
    int index = cart.indexWhere((element) => element.id == id);
    if (index != -1) {
      cart.removeAt(index);
      print("Product with ID $id has been removed from the cart.");
    } else {
      print("Product with ID $id not found in the cart.");
    }
  }

///////////////

  double calculateTotal() {
    double total = 0.0;
    for (var calculate in cart) {
      total += calculate.price;
    }
    return total;
  }

///////////////

  int calculateItim() => cart.length;

  void makePayment() {
    double total = 0.0;
    for (var calculate in cart) {
      total += calculate.price;
    }
    print("total =$total");
    stdout.write("cost:");
    int input = int.parse(stdin.readLineSync()!);
    if (total == input) {
      DateTime today = DateTime.now();
      DateTime deliveryDate = today.add(Duration(days: 14));
      String formattedDate =
          "${deliveryDate.day}/${deliveryDate.month}/${deliveryDate.year}";

      print("good :Your order will arrive after 14 days ($formattedDate).");
    } else {
      print("no");
    }
  }
}

void main(List<String> args) {
  Customer customer = Customer("_address", 0, "_name");

  customer.addcart(1);
  customer.addcart(5);
  customer.addcart(4);
  customer.addcart(3);
  customer.addcart(2);
  print("___________________");
  customer.viewcart();
  print(
      "Item: ${customer.calculateItim()}         ....total: \$${customer.calculateTotal()} ");
}
