import 'dart:io';

void main() {
  const int number = 7;
  stdout.write("Enter user name :");
  String name = stdin.readLineSync()!;
  print("\n***********\nuser name :${name}");

/////////////////////////////////////////////////////

  print("Hello I am \"Johu Doe\"\n***********");

  double? Formula;
  print("Formula = (r * t * p) / 100 ");
  stdout.write("Enter r =");
  double r = double.parse(stdin.readLineSync()!);
  stdout.write("Enter t =");
  double t = double.parse(stdin.readLineSync()!);
  stdout.write("Enter p =");
  double p = double.parse(stdin.readLineSync()!);

  print("***********\nFormula = ${(r * t * p) / 100}\n***********");
///////////////////////////////////////////////////////////////
  double? number_square;
  stdout.write("The product of the square of the number. \nEnter Number :");
  number_square = double.parse(stdin.readLineSync()!);
  print("***********\nNumber Square = ${number_square * number_square}");

////////////////////////////////////////////////////////////////
  stdout.write("***********\nEnter full name. \nFirst Name : ");
  String First_Name = stdin.readLineSync()!;
  stdout.write("Last Name : ");
  String Last_Name = stdin.readLineSync()!;
  print("***********\n Name :$First_Name $Last_Name");

////////////////////////////////////////////////////////////////
  stdout.write("***********\nswap two number :\nNumber 1 = ");
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Number 2 = ");
  double num2 = double.parse(stdin.readLineSync()!);
  if (num1 == 0 || num2 == 0) {
    print("Undefined ");
  } else {
    print("_________\navg = ${num1 / num2}\n_________");
  }
/////////////////////////////////////////////////////////////////
  int num3 = 5, num4 = 8;
  print("Number 1 = ${num3}");
  print("Number 2 = ${num4}");
  int c = num3;
  num3 = num4;
  num4 = c;
  print("***********\nNumber 1 = ${num3}");
  print("Number 2 = ${num4}\n***********");
//////////////////////////
  String Name2 = "      kamel    ";
  print(Name2.trimLeft());
  print(Name2.trimRight());
  print(Name2.trim());

//////////////////////////
  String num0 = "4";
  int x = int.parse(num0);
  print(x);
}
