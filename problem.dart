//Task1:Creat a Simple Class
class Car{
  String brand;
  String model;
  int year;

  Car(this.brand , this.model , this.year);

  void displayInfo(){
    print('Barad:$brand');
    print('Model:$model');
    print('Year:$year');
  }
}

//Task2:Constructors Practise
class Student{
  String name;
  int age;
  double grade;

  Student( this.name , this.age , this.grade);
  Student.guest([this.name='Rashad' , this.age=19 , this.grade=90]);


  void showInfo(){
    print('Name:$name');
    print('Age:$age');
    print('Grade:$grade');
  }
}

//Task3:Encapsulation (Using Getters & Setters)
class BankAccount{
  double _balance;
  BankAccount(this._balance);

  double get balance => _balance;

  void set balance(double newBalance){
    if(newBalance<0){
      print('Invalid balance');
    }else{
      _balance=newBalance;
    }
  }
}

//Task4:Inheritance
class Animal{
  String name;
  Animal(this.name);
  void makeSound(){
    print('$name is sounding');
  }
}
class Dog extends Animal{
  Dog(super.name);
   void makeSound(){
    print('$name:Woof!');
  }
  }
class Cat extends Animal{
  Cat(super.name);
   void makeSound(){
    print('$name:Meow!');
  }
  }

//Task5: Constructors with Inheritance
class Person{
  String name;
  int age;
  Person(this.name,this.age);
}
class Employee extends Person{
  double salary;
  Employee(super.name, super.age ,this.salary);
  void displayInfo(){
    print('Name:$name');
    print('Age:$age');
    print('Salary:$salary');
  }
}

//Task6:Final Challenge (Encapsulation + Inheritance + Constructors)
class Book{
  String title;
  String author;
  Book(this.title,this.author);
  void displayInfo(){
    print('Title:$title');
    print('Author:$author');
  }
}
class BorrowedBook extends Book{
  bool _isBorrowed =false ;
  BorrowedBook(super.title, super.author);
  void borrowedBook(){
    if(_isBorrowed){
      print('This book is already borrowed');
    }else{
      _isBorrowed=true;
      print('Borrowed successfully');
    }
  }  void returnBook(){
    if(_isBorrowed){
      _isBorrowed=false;
      print('Book returned successfully');
    }else{
      print('Already ruturned');
    }
  }
  void getStatus() {
  if (_isBorrowed) {
    print('Current Status: Borrowed');
  } else {
    print('Current Status: Available');
  }
}
}

void main(){
//Task1:Creat a Simple Class
  Car car = Car('Toyota','Corolla',2022);
  car.displayInfo();

//Task2:Constructors Practise
Student student1 = Student ('Anas',22,95);
student1.showInfo();

Student student2 = Student.guest();
student2 = Student.guest();
student2.showInfo();

//Task3:Encapsulation (Using Getters & Setters)
BankAccount bankAccount= BankAccount(1000);
print('Balance:${bankAccount.balance}');

bankAccount.balance=-500;
print('Balance:${bankAccount.balance}');

//Task4:Inheritance
Dog dog = Dog('Dog');
Cat cat = Cat('Cat');
dog.makeSound();
cat.makeSound();

//Task5: Constructors with Inheritance
Employee employee = Employee('Ezz', 29, 5000);
employee.displayInfo();

//Task6:Final Challenge (Encapsulation + Inheritance + Constructors)
BorrowedBook book = BorrowedBook('Flutter Basics', 'John');
  book.displayInfo();
  book.borrowedBook();
  book.borrowedBook();
  book.returnBook();
  book.getStatus();
}