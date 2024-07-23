import 'dart:io';
import 'dart:math';

class Circle {
  double radius;
  Circle(this.radius);
  double area() {
    return 2 * pi * radius;
  }
}

class Rectangl {
  double length;
  double width;
  Rectangl(this.length, this.width);

  double area() {
    return 2 * (length + width);
  }
}

class Triangle {
  double base;
  double height;
  Triangle(this.base, this.height);

  double area() {
    return base * height * 0.5;
  }
}

class Cylinder extends Circle {
  double height;
  Cylinder(this.height, double radius) : super(radius);
  @override
  double area() {
    return height * radius * radius * pi;
  }
}

void display() {
  print("""\n\n***********************\n\nEnter number -|
1-Circle.
2-Rectangl.
3.Triangle.
4.Cylinder.
5-esc.
""");
}

void main(List<String> args) {
  while (true) {
    display();
    stdout.write("Enter number (1-5) :");
    String input = stdin.readLineSync()!;
    int number;
    try {
      number = int.parse(input);
      if (number >= 1 && number <= 5) {
        switch (number) {
          case 1:
            while (true) {
              stdout.write("enter radius :");
              String input = stdin.readLineSync()!;
              double radius;
              try {
                radius = double.parse(input);
                Circle circle = Circle(radius);
                print("circle area =${circle.area()}");
                break;
              } catch (e) {
                print("return input numper .");
              }
            }
            break;

          case 2:
            while (true) {
              stdout.write("enter Length :");
              String input_length = stdin.readLineSync()!;
              double length;
              stdout.write("enter width :");
              String input_width = stdin.readLineSync()!;
              double width;
              try {
                width = double.parse(input_width);
                length = double.parse(input_length);
                Rectangl rectangl = Rectangl(length, width);
                print("Rectangl area =${rectangl.area()}");
                break;
              } catch (ee) {
                print("return input numper .");
              }
            }
            break;

          case 3:
            while (true) {
              stdout.write("enter base :");
              String input_base = stdin.readLineSync()!;
              double base;
              stdout.write("enter height :");
              String input_height = stdin.readLineSync()!;
              double height;
              try {
                base = double.parse(input_base);
                height = double.parse(input_height);
                Triangle triangle = Triangle(base, height);
                print("triangle.area = ${triangle.area()}");
                break;
              } catch (eee) {
                print("return input numper .");
              }
            }
            break;

          case 4:
            while (true) {
              stdout.write("enter height :");
              String input_height = stdin.readLineSync()!;
              double height;
              stdout.write("enter radius :");
              String input_radius = stdin.readLineSync()!;
              double radius;
              try {
                height = double.parse(input_height);
                radius = double.parse(input_radius);
                Cylinder cylinder = Cylinder(height, radius);
                print("cylinder area=${cylinder.area()}");
                break;
              } catch (e) {
                print("return input numper .");
              }
            }
            break;

          case 5:
            return;

          default:
            print("return input numper .");
            break;
        }
      } else {
        print("return input numper .");
      }
    } catch (e) {
      print("return input numper (1-5) .");
      continue;
    }
  }
}
