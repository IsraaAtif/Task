//Q1:
class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  void deposit(double amount)  => _balance += amount;
  
  void withdraw(double amount) {
    if (_balance - amount >= 0) {
      _balance -= amount;
    }
  }
}
//Q2:
class Student {
  String _name;
  int _grade;

  Student(this._name, this._grade);

  String get name => _name;

  int get grade => _grade;

  set grade(int value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print('Invalid value: grade must be between 0 and 100');
    }
  }
}
//Q3:
class Vehicle {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);

  void describe() {
    print('Brand: $brand');
    print('Speed: $speed');
  }
}

class Car extends Vehicle {
  int doors;

  Car(super.brand, super.speed, this.doors);

  @override
  void describe() {
    super.describe();
    print('Doors: $doors');
  }
}
//Q4:
class Animal {
  String name;

  Animal(this.name);
}

class Dog extends Animal {
  String breed;

  Dog(super.name, this.breed);
}
//Q5:
abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}
//Q6:
abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void work();

  void introduce() {
    print('My name is $name');
  }
}

class Developer extends Employee {
  Developer(super.name, super.salary);

  @override
  void work() {
    print('$name is writing code');
  }
}
//Q7:
abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print('Duck is flying');
  }

  @override
  void swim() {
    print('Duck is swimming');
  }
}
//Q8:
abstract class Drawable {
  void draw();
  String getColor();
}

class Square implements Drawable {
  String color;

  Square(this.color);

  @override
  void draw() {
    print('Drawing a square in $color');
  }

  @override
  String getColor() {
    return color;
  }
}

class Triangle implements Drawable {
  String color;

  Triangle(this.color);

  @override
  void draw() {
    print('Drawing a triangle in $color');
  }

  @override
  String getColor() {
    return color;
  }
}
//Q9:
class Counter {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
  }

  void decrement() {
    if (_count > 0) {
      _count--;
    }
  }

  void reset() {
    _count = 0;
  }
}
void main() {
//Q1:
  BankAccount bankAccount = BankAccount(100);
  bankAccount.deposit(50);
  print(bankAccount.balance); 

  bankAccount.withdraw(200);
  print(bankAccount.balance);

//Q2:
  Student student = Student('Zain',85);

  print(student.name);  
  print(student.grade); 

  student.grade = 95;   
  print(student.grade); 

  student.grade = 150; 
  print(student.grade); 

//Q3:
  Car car = Car('Toyota',180,4);
  car.describe();

//Q4:
  Dog dog = Dog('Douby','Labrador');
  print(dog.name);   
  print(dog.breed);

//Q5:
  Shape rectangle = Rectangle(5,4);
  Shape circle = Circle(3);
  print(rectangle.area());
  print(circle.area());

//Q6:
  Employee developer = Developer('Amina', 15000);
  developer.introduce();
  developer.work();

//Q7:
  Duck duck = Duck();
  duck.fly();  
  duck.swim();

//Q8:
  Square square = Square('red');
  square.draw();              
  print(square.getColor());

  Triangle triangle = Triangle('blue');   
  triangle.draw();            
  print(triangle.getColor());

//Q9:
  Counter counter = Counter();

  print(counter.count); 

  counter.increment();
  counter.increment();
  counter.increment();
  print(counter.count); 

  counter.decrement();
  print(counter.count); 

  counter.decrement();
  counter.decrement();
  counter.decrement(); 
  print(counter.count); 

  counter.increment();
  counter.increment();
  print(counter.count); 

  counter.reset();
  print(counter.count); 

}
