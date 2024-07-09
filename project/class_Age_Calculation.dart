import 'dart:io';

class Calculation_Your_Weight {
  int Height;
  Calculation_Your_Weight(this.Height);

  void Weight() {
    print("""
1-man.
2-weman.
""");
    stdout.write("Enter your choice (1 For men, 2 For women): ");
    int input = int.parse(stdin.readLineSync()!);

    switch (input) {
      case 1:
        int man = WeightForMan();
        print("weight=${man}");
        break;

      case 2:
        int weman = WeightForWemen();
        print("weight=$weman");
        break;

      default:
        print("Invalid choice.");
        break;
    }
  }

  int WeightForMan() {
    return (48 + (0.9 * (Height - 150))).toInt();
  }

  int WeightForWemen() {
    return (45 + (0.9 * (Height - 150))).toInt();
  }
}
