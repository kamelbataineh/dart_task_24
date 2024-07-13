import 'dart:io';

void Weight(int H) {
  while (true) {
    print("""
1-man.
2-weman.
""");
    stdout.write("Enter your choice (1 For men, 2 For women): ");
    String input = stdin.readLineSync()!.toLowerCase();
    switch (input) {
      case "1" || "man":
        int man = WeightForMan(H);
        print("weight=${man}");
        return;
      case "2" || "woman":
        int weman = WeightForWemen(H);
        print("weight=$weman");
        return;
      default:
        print("Invalid choice.");
        break;
    }
  }
}

int WeightForMan(int H) {
  return (48 + (0.9 * (H - 150))).toInt();
}

int WeightForWemen(int H) {
  return (45 + (0.9 * (H - 150))).toInt();
}

////////////////////////////////////////

void cal_rate() {
  while (true) {
    List<int> mark = [];
    print("enter number mark:");
    String in_mark = stdin.readLineSync()!;
    int mark_number;
    try {
      mark_number = int.parse(in_mark);1
      for (var i = 1; i <= mark_number; i++) {
        print("enter mark($i):");
        int number = int.parse(stdin.readLineSync()!);
        mark.add(number);
      }
      print("Marks:$mark");

      int sum = 0;
      for (int num in mark) {
        sum += num;
      }
      double average = sum / mark.length;
      print("The rate: $average");
      if (average <= 100 && average >= 84) {
        stdout.write("Excellent.");
      } else if (average < 84 && average >= 76) {
        stdout.write("Very good.");
      } else if (average < 76 && average >= 68) {
        stdout.write("Good.");
      } else if (average < 68 && average >= 50) {
        stdout.write("Acceptable.");
      } else if (average < 50 && average >= 35) {
        stdout.write("Failed.");
      } else {
        stdout.write(
            "Error in entering grades, the highest grade is 100 and the lowest grade is 35.");
      }
      break;
    } catch (eee) {
      print("ReWrite number .");
    }
  }
}

/////////////////////////////////////

void information() {
  Map<String, String> information_persomal = {};
  void info() {
    stdout.write("Hello :)\nEnter Name:");
    String name = stdin.readLineSync()!;
    information_persomal["Name"] = name;

    //////////////////////////

    while (true) {
      stdout.write("Enter Age (18 -- 60):");
      String age = stdin.readLineSync()!;
      int agenumber;
      try {
        agenumber = int.parse(age);
        if (agenumber >= 18 && agenumber <= 60) {
          information_persomal["Age"] = age;
          break;
        } else {
          print("Rewrite (18 to 60)");
        }
      } catch (e) {
        print("Rewrite (18 to 60)");
      }
    }

    ///////////////////////////

    while (true) {
      stdout.write("Enter phone number (10 to 20): ");
      String input = stdin.readLineSync()!;
      int number;
      try {
        number = int.parse(input);
        if (input.length >= 10 && input.length <= 20) {
          information_persomal["Number Iphone"] = input;
          break;
        } else {
          print("Rewrite (10 to 20)");
        }
      } catch (e) {
        print("Rewrite (10 to 20)");
      }
    }
    information_persomal.forEach((key, value) {
      print("$key:$value");
    });
  }

  //////////////////////////

  info();
  while (true) {
    print("""\n
1-Update Name ,age ,number.
2-Update Name.
3-Update Age.
4-Update Number Iphone.
5-Add New (Key : value)
6-Show your informatin.
7- esc.""");

    stdout.write("Enter a number of your choice (1 - 7): ");
    String input = stdin.readLineSync()!;
int input_number;
try{input_number=int.parse(input);

}catch(eeee){
  print("Enter Number 1-7 .");
  continue;
}
    switch (input_number) {
      case 1:
        info();
        break;

      /////////////////////////

      case 2:
        stdout.write("Update name:");
        String name = stdin.readLineSync()!;
        information_persomal["name"] = name;
        break;

      ///////////////////////

      case 3:
        while (true) {
          stdout.write("Update Age (18 -- 60):");
          String age = stdin.readLineSync()!;
          int agenumber;
          try {
            agenumber = int.parse(age);
            if (agenumber >= 18 && agenumber <= 60) {
              information_persomal["Age"] = age;
              break;
            } else {
              print("Rewrite (18 to 60)");
            }
          } catch (e) {
            print("Rewrite (18 to 60)");
          }
        }
        break;

      ///////////////////////

      case 4:
        while (true) {
          stdout.write("Update phone number (10 to 20): ");
          String input = stdin.readLineSync()!;
          int number;
          try {
            number = int.parse(input);
            if (input.length >= 10 && input.length <= 20) {
              information_persomal["Number Iphone"] = input;
              break;
            } else {
              print("Rewrite (10 to 20)");
            }
          } catch (e) {
            print("Rewrite (10 to 20)");
          }
        }
        break;
      case 5:
        stdout.write("Enter Key name:");
        String name1 = stdin.readLineSync()!;
        stdout.write("Enter values name:");
        String name2 = stdin.readLineSync()!;
        information_persomal[name1] = name2;
        break;

      case 6:
       stdout.write("information personal : $information_persomal"); 
        ;
break;
      case 7:
        information_persomal.forEach((keys, values) {
          print("$keys:$values");
        });

        return;

      default:
        print("Invalid choice.");
        break;
    }
  }
}

void main() {
  while (true) {
    print("""Enter a number of options:

1-Calculation Rate.
2-Calculation Your Weight.
3-Add Personal Information.
4-esc.
""");

    stdout.write("Enter a number of options:");
    String number = stdin.readLineSync()!;
    int it_number;
    try {
      it_number = int.parse(number);
    } catch (eee) {
      print("Enter number :)");
      continue;
    }

    switch (it_number) {
      case 1:
        cal_rate();
        break;

      case 2:
        while (true) {
          stdout.write("Enter a number Height in CM (10-300):");
          String Height = stdin.readLineSync()!;
          int Height_number;
          try {
            Height_number = int.parse(Height);
            if (Height_number >= 10 && Height_number <= 300) {
              Weight(Height_number);
              break;
            } else {
              print("Rewrite CM 10-300 ");
            }
          } catch (e) {
            print("Rewrite CM 10-300 ");
          }
        }
      case 3:
        information();
        break;

      case 4:
        print("exc.");
        return;

      default:
        print("no");
        break;
    }
  }
}
