import 'dart:io';

void main() {
  print("**********Q1**********");
/////////////////////////////1
  List<String> names = ['k', 'a', 'm', 'e', 'l']; //array
  print("names :$names");
/////////////////////////////2
  print("**********Q2**********");
  Set<String> Fruits = {
    "apple",
    "avocado",
    "fig",
    "papaya",
    "kiwi"
  }; //دون تكرار array
  print("Fruits :$Fruits");
/////////////////////////////x3
  print("**********Q3********** (i didn't  know) \n");

////////////////////////////4
  print("**********Q4**********");
  List<String> day = []; //array
  day.add("1");
  day.add("2");
  day.add("3");
  day.add("4");
  day.add("5");
  day.add("6");
  day.add("7");
  print("days=$day");

////////////////////////////5
  print("**********Q5**********");
  Map<String, String> map = {
    "name": "kamel",
    "age": "21",
    "country": "Irbid",
    "adderss": "West of Irbid"
  };
  print(map);
  map["country"] = "Amman";
  print(map);
////////////////////////////6
  print("**********Q6**********");
  Map<String, String> map1 = {
    "name": "kamel",
    "number": "0712345678",
    "age": "21",
    "country": "Irbid",
    "adderss": "West of Irbid"
  };
  print(map1);
  var x = map1.keys.where((key) => key.length == 4);
  print("keys=4:$x");
}
