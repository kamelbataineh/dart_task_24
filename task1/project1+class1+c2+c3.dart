import 'dart:io';
import 'class_Age_Calculation.dart';

void main() {
  print("""Enter a number of options:
1-Calculation your data of birth.
2-Age Calculation.
3-Calculation your weight.""");
  stdout.write("Enter a number of options:");
  int number = int.parse(stdin.readLineSync()!);

  switch (number) {
    case 1:
      print("object");
      break;
    case 2:
      stdout.write("Enter a number Height:");
      int Height = int.parse(stdin.readLineSync()!);
      Calculation_Your_Weight CalculationWeight =
          Calculation_Your_Weight(Height);
      CalculationWeight.Weight();
      break;
    default:
      print("no");
      break;
  }
}
