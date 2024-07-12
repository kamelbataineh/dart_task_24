import 'dart:io';
import 'dart:math';

void info() {
  //////////////////////1
  String name = "Kamel";
  print(name);
}

void number() {
  //////////////////////2
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var i = 1; i <= num.length; i++) {
    if (i % 2 == 0) {
      stdout.write("$i,");
    }
  }
}

void info2(String name) {
  //////////////////////3
  print("\nHello : $name");
}

double area(double r) {
  //////////////////////4
  const double pi = 3.14;
  double sum = 0;
  sum = pi * r * r;
  return sum;
}

void power(int num1, int num2) {
  //////////////////////5
  print("power($num1,$num2)=${pow(num1, num2)}");
}

int add(int num1, int num2) {
  //////////////////////6
  return num1 + num2;
}

void maxNumber(int a, int b, int c) {
  //////////////////////7
  if (a >= b && a >= c) {
    print("maxNumber= $a");
  } else if (b >= a && b >= c) {
    print("maxNumber= $b");
  } else {
    print("maxNumber= $c");
  }
}

void iseven(int num) {
  //////////////////////8
  if (num.isEven) {
    print("True.");
  } else {
    print("false.");
  }
}

void createUser(String name, int age, [bool isActive = true]) {
  //////////////////////9
  print("name: $name\nage: $age\nisActive: $isActive  ");
}

int countArea([int length = 1, int weight = 1]) {
  //////////////////////10
  int sum = length * weight;

  return sum;
}

void main() {
  info(); //1

  number(); //2

  info2("john"); //3

  double x = area(3); //4
  print("Area=$x");

  power(5, 3); //5

  int x1 = add(5, 7); //6
  print("add=$x1");

  maxNumber(4, 6, 5); //7

  iseven(3); //8

  createUser("Kamel", 22); //9
  createUser("Kamel", 22, false);

  int x2 = countArea(); //10
  print("area=$x2");
}
