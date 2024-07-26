import 'class_pruduct.dart';
class Admin extends Products {
  Admin(String name) : super(name);
  @override
  void viewProduct() {
    print("Product List:");
    Products.product_list.forEach((product) {
      print("Product ID: ${product.id}, Product NAME: ${product.name}");
    });
  }
}

void main(List<String> args) {
  Admin admin = Admin("name");
  admin.viewProduct();


}
