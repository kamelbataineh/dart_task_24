import 'claas.dart';
import 'dart:io';

int playid = 0;

class Products extends Shop {
  late int _id;
  late String _name;
  double _price;
  Products(this._name, this._price) : super(_name, _price) {
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

  double get price => _price;
  set price(double newprice) {
    _price = newprice;
  }

  viewpruduct() {
    for (var i = 0; i < Shop.product_list.length; i++) {
      print(
          "${i + 1} ${Shop.product_list[i].name}       .... \$${Shop.product_list[i].price}");
    }
  }
}

void main(List<String> args) {
  Products products = Products("", 0);
  products.viewpruduct();
}
