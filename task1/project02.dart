import 'dart:io';

void main() {
  print(" WElcom to our company \n Please Enter your username aad password to login :");
  
  stdout.write("username:");
  String username = stdin.readLineSync()!;
  
  stdout.write("password:");
  int? password = int.parse(stdin.readLineSync()!);
  
  stdout.write("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);
  
  print("username: $username \npassword: $password \nage: $age ");
}
