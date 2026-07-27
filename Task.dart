
  //Task1:Calculate rectangle area
  double rectangleArea(double width, double height) {
  return width * height;
  }
//Task2:Palindrome checker
bool isPalindrome(String text) {
  String text1 = text.toLowerCase().replaceAll(' ', '');
  String text2 = text1.split('').reversed.join('');
  return text1 == text2;
  }

//Task3:Named & optional
String userProfile(String name, {int age = 18, String city = "Unknown"}) {
  return "Name: $name, Age: $age, City: $city";
  }

//Task4:Filter a list with a function parameter
List<int> filterNumbers(List<int> nums, bool Function(int) test) {
  List<int> result = nums.where(test).toList();
  return result;
}

void main() {
  //Task1:
  double width = 10.0;
  double height = 20.0;
  double area = rectangleArea(width, height);
  print('Area: $area');

//Task2:
  print(isPalindrome("Race car"));
  print(isPalindrome("Hello")); 

//Task3:
  print(userProfile("Rashad", age: 28, city: "Mansoura")); 

//Task4:
print(filterNumbers([10, 20, 25, 35, 40], (n) => n.isEven));
print(filterNumbers([10, 20, 25, 35, 40], (n) => n > 10));
}