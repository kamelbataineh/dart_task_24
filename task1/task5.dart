import 'dart:io';
import 'dart:math';

void main() {
///////////////////////////////1

  int i, sum = 0;
  print("The natural number are:");
  for (i = 1; i <= 10; i++) {
    print(i);
  }

///////////////////////////////2

  for (i = 1; i <= 10; i++) {
    sum += i;
  }
  print("The sum of first ${i} natural number = ${sum}");

///////////////////////////////4

  stdout.write("Enter number prime and no prime :");
  int temp = 0;
  int num0 = int.parse(stdin.readLineSync()!);
  for (i = 2; i < num0; i++) {
    if (num0 % i == 0) {
      temp = 1;
    }
  }
  if (temp == 1) {
    print("no prime");
  } else {
    print("yes prime");
  }

////////////////////////////////5

  int sum1 = 0;
  stdout.write("Enter number (n * n):");
  int num1 = int.parse(stdin.readLineSync()!);
  for (i = 1; i <= num1; i++) {
    print("(${i}*${i})=${i * i}");
    sum1 += i * i;
  }
  print("The sum of the above series is = ${sum1}");

////////////////////////////////6

  stdout.write("Enter number of characters for a side :");
  int num2 = int.parse(stdin.readLineSync()!);
  for (i = 1; i <= num2; i++) {
    for (int j = 1; j <= num2; j++) {
      stdout.write("#");
    }
    print("");
  }

////////////////////////////////7

  stdout.write("input the number of terms :");
  int num3 = int.parse(stdin.readLineSync()!);
  for (i = 1; i <= num3; i++) {
    print("Number is : [${i}] and the cude of [${i}] is : ${pow(i, 3)}");
  }
}
