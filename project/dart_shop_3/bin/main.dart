import 'dart:ffi';
import 'dart:io';
import 'class_admin.dart';
import 'class_customer.dart';
import 'class_product.dart';
import 'claas.dart';

//////////////////////
///
void meun() {
  while (true) {
    print("""
1.custmoer
2.admin
""");
    stdout.write("Enter number (1-2):");
    String input = stdin.readLineSync()!;
    int input_number;
    try {
      input_number = int.parse(input);
      if (input_number == 1 || input_number == 2) {
        switch (input_number) {
          case 1:
            print("new acuont (yes):");
            String input1 = stdin.readLineSync()!;
            if (input1.toLowerCase() == "yes" || input1 == "1") {
              creatcustomer();
            } else {
              print("________________________");
            }
            return;
          case 2:
            {
              Admin admin = Admin("name", 4);

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
                      print("ecs...");
                      return;

                    default:
                      print(
                          "Invalid option. Please enter a number between 1 and 6.");
                  }
                } catch (e) {
                  print("enter number 1-6");
                }
              }
            }
          default:
            print("not");
            break;
        }
      } else {
        print("rutrun");
      }
    } catch (e) {
      print("return number:(1-2)");
    }
  }
}

///
/////////////////
///
void creatcustomer() {
  stdout.write("add name:");
  String name = stdin.readLineSync()!;

  stdout.write("add phne:");
  double phno = double.parse(stdin.readLineSync()!);

  stdout.write("add adress:");
  String address1 = stdin.readLineSync()!;
  Customer customer = Customer(address1, phno, name);
  print(
      "name:${customer.name}   address:${customer.address}   phno:${customer.phno}");
}

///////////////
///

void main(List<String> args) {
  Customer customer = Customer("_address", 0, "_name");
  Products products = Products("_name", 0);
  products.viewpruduct();
  customer.addcart(1);
  customer.viewcart();
  customer.viewcart();
  print(
      "Item: ${customer.calculateItim()}         ....total: \$${customer.calculateTotal()} ");

  meun();

  while (true) {
    print("""
1.add.
2.dele.
3.view
4.buy.
""");
    stdout.write("enter number :");
    String input = stdin.readLineSync()!;
    int input_number;
    try {
      input_number = int.parse(input);
      if (input_number >= 1 || input_number <= 4) {
        switch (input_number) {
          case 1:
            while (true) {
              print("number add 1  ecs -1 :");
              int input1 = int.parse(stdin.readLineSync()!);
              if (input1 >= 0) {
                products.viewpruduct();
                print("____________________");
                stdout.write("enter add (.):");
                int num1 = int.parse(stdin.readLineSync()!);
                customer.addcart(num1);
                customer.viewcart();

                print("____________________");
                print(
                    "Item: ${customer.calculateItim()}         ....total: \$${customer.calculateTotal()} ");
                print("____________________");
              } else {
                customer.viewcart();
                break;
              }
            }
            break;
          case 2:
            customer.viewcart();
            print("____________________");
            stdout.write("enter dele (.):");
            int num2 = int.parse(stdin.readLineSync()!);
            customer.deletecart(num2);
            customer.viewcart();
            print("____________________");
            print(
                "Item: ${customer.calculateItim()}         ....total: \$${customer.calculateTotal()} ");
            print("____________________");
            break;
          case 3:
            customer.viewcart();

            print(
                "Item: ${customer.calculateItim()}         ....total: \$${customer.calculateTotal()} ");

            break;
          case 4:
            customer.makePayment();
            return;

          default:
            print("not");
        }
      }
    } catch (e) {
      print("return number:(1-4)");
    }
  }
}
