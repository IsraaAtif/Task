//Task1:Person class
class Person{
  String? name;
  int? age;
  String? city;

  Person(this.name,this.age,this.city);

  void printInfo(){
    print('Name:${this.name}');
    print('age:${this.age}');
    print('City:${this.city}');

  }
  }

  //Task2:Rectangle calculator
  class Rectangle{
  double? width;
  double? height;

  Rectangle(this.width, this.height);

  double area() {
    return width! * height!;
  }

  double perimeter() {
    return 2 * (width! + height!);
  }

  }

  //Task3:Bank account
  class BankAccount {
  String? owner;
  double? balance;

  BankAccount(this.owner, this.balance);
  BankAccount.empty(String owner) {
    this.owner = owner;
    this.balance = 0;
  }

  void deposit(double amount) {
    balance = balance! + amount;
    print('Balance: $balance');
  }

  void withdraw(double amount) {
    balance = balance! - amount;
    print('Balance: $balance');
  }
}

//Task4:Student grades
class Student {
  String? name;
  List<double>? grades;

  Student(this.name, this.grades);

  double average() {
    double sum = 0;
    for (int i = 0; i < grades!.length; i++) {
      sum = sum + grades![i];
    }
    return sum / grades!.length;
  }

  String status() {
    if (average() >= 60) {
      return "Pass";
    } else {
      return "Fail";
    }
  }
}

//Task5:Product catalog
class Product {
  String? name;
  double? price;
  bool inStock = true;

  Product(this.name, this.price);

  Product.outOfStock(String name, double price) {
    this.name = name;
    this.price = price;
    this.inStock = false;
  }

  void display() {
    print("Product: $name, Price: $price, In Stock: $inStock");
  }
}


void main(){
  //Task1:Person class
  Person person=Person("Zain",25,"Cairo");
  person.printInfo();

  //Task2:
  Rectangle rectangle = Rectangle(20,50);
  print('Area: ${rectangle.area()}');
  print('Perimeter: ${rectangle.perimeter()}');

  //Task3:Bank account
   BankAccount account = BankAccount.empty("Rashad");
   account.deposit(500);
   account.withdraw(300);

  //Task4:Student grades
  Student student = Student("Rashad", [80, 90, 78]);
  print('Average: ${student.average()}');
  print('Status: ${student.status()}');

  //Task5:Product catalog
  Product product1 = Product("Laptop", 15000);
  Product product2 = Product("Phone", 8000);
  Product product3 = Product.outOfStock("Tablet", 5000);
  product1.display();
  product2.display();
  product3.display();
}