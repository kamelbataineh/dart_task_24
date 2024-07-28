int playid = 0;

class Shop {
  late int _id;
  late String _name;
  double _price;
  Shop(this._name, this._price) {
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

  static List<Shop> product_list = [
    Shop("name1", 33),
    Shop("name2", 35),
    Shop("name3", 34),
    Shop("name4", 55),
    Shop("name5", 65),
    Shop("name6", 23)
  ];
}
