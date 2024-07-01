import 'dart:io';

void main() {
  stdout.write("mark :");
  int mark = int.parse(stdin.readLineSync()!);
  if (mark <= 100 && mark >= 90) {
    print('A');
  } else if (mark >= 70 && mark <= 89) {
    print('B');
  } else if (mark >= 40 && mark <= 69) {
    print('C');
  } else {
    print('F');
  }

//////////////////////////////////////
  stdout.write("Name1:");
  String name1 = stdin.readLineSync()!;
  stdout.write("Name2:");
  String name2 = stdin.readLineSync()!;
  print("___________________\n");
  stdout.write("mark $name1:");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("mark $name2:");
  int num2 = int.parse(stdin.readLineSync()!);
  print("___________________\n");
  if (num1 == num2) {
    print("Equal");
  } else if (num1 > num2) {
    print("$name1");
  } else {
    print("$name2");
  }

///////////////////////////////////////////
  stdout.write("A :");
  int number1 = int.parse(stdin.readLineSync()!);
  stdout.write("B :");
  int number2 = int.parse(stdin.readLineSync()!);
  stdout.write("C :");
  int number3 = int.parse(stdin.readLineSync()!);
  if (number1 == number2 && number1 == number3) {
    print("Perimeter_Triangle = ${number1 + number2 + number3}");
    print("Triangle are equal ");
  } else if (number1 == number2 || number1 == number3 || number2 == number3) {
    if (number1 == number2 && number1 != number3) {
      print("Perimeter_Triangle = ${number1 + number2 + number3}");
      print("Triangle are tow equal");
    } else if (number1 == number3 && number1 != number2) {
      print("Perimeter_Triangle = ${number1 + number2 + number3}");
      print("Triangle are  tow equal");
    } else {
      print("Perimeter_Triangle = ${number1 + number2 + number3}");
      print("Triangle are  tow equal");
    }
  } else if ((number1 != number2 && number1 != number3 && number2 != number3)) {
    print("Perimeter_Triangle = ${number1 + number2 + number3}");
    print("Triangle are  different");
  } else {
    print("return");
  }
/////////////////////////////////////////
  int x = 0;
  print(x.isOdd);
  print(x.isEven);

///////////////////////////////////////////
  stdout.write("Enter day :");
  int day = int.parse(stdin.readLineSync()!);
  switch (day) {
    case 1:
      {
        print("Sunday.");
        break;
      }
    case 2:
      {
        print("Monday.");
        break;
      }
    case 3:
      {
        print("Tuseday.");
        break;
      }
    case 4:
      {
        print("Wednesday.");
        break;
      }
    case 5:
      {
        print("Thursday.");
        break;
      }
    case 6:
      {
        print("Fiday.");
        break;
      }
    case 7:
      {
        print("Saturday.");
        break;
      }
    default:
      {
        print("return.");
        break;
      }
  }
}
