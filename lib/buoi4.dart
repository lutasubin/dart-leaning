// ignore_for_file: public_member_api_docs, sort_constructors_first
//! 1. OOP - Object Oriented Programming
// Lập trình hướng đối tượng là kiểu lập trình xoay quanh các object (đối tượng),
// lấy object làm trọng
//! 2. Vậy đối tượng là gì?
// Hiểu đơn giản đối tượng là 1 thực thể, sinh vật, đồ vật, ...
// sở hữu những tính chất và có thể có hành động khác nhau

// ví dụ: Car, People, Employee, Student, Animal
// Trong một đối tượng sẽ có các attribute (field, properties) và các method,
// có thể hiểu attribute các thuộc tính, tính chất
// và method là các phương thức, chức năng mà đối tượng đó có thể làm.
//! 3. Class
// Lớp là một bản thiết kế cho đối tượng. Class định nghĩa các thuộc tính (attribute) và phương thức (method) mà đối tượng sẽ có.
// Trong Dart, bạn tạo một lớp bằng cách sử dụng từ khóa class.
class Person {
  String name;
  double age;
  double height;
  String nationality;
//! 5. Constructor
  // Constructor là một hàm đặc biệt được gọi khi một đối tượng mới của lớp được tạo ra.
  // Bạn có thể sử dụng constructor để khởi tạo giá trị cho các thuộc tính của đối tượng.
  // Constructor mặc định trong Dart là một hàm có tên trùng với tên của lớp
  Person(this.name, this.age, this.height, this.nationality);
//! 6. Method
  // Method là một hàm (function) được định nghĩa bên trong class
  // và hoạt động trên các đối tượng của class đó

  // Method trong Dart tương tự như các hàm bình thường,
  // nhưng chúng có thể truy cập và thao tác với các thuộc tính (properties) của đối tượng mà chúng thuộc về.
  void sayHello() {
    print('Hello, my name is $name and I am $age years old.');
  }

  void snore() {
    print("zzz.zzzzz....zzzzz...zzz");
  }
}

//! 7. Đối tượng
// Đối tượng là một thể hiện cụ thể của một lớp
// Bạn có thể tạo nhiều đối tượng từ cùng một lớp,
// và mỗi đối tượng có thể có các giá trị thuộc tính riêng biệt.
void main(List<String> args) {
  // Object là 1 phiên bản hiện hữu của class, có thể gọi là instance
  // Khởi tạo đối tượng chính là tạo ra 1 đối tượng mới bằng cách gọi hàm khởi tạo () của Class đó
  var alice = Person('alice', 30, 170, "USA");
  var huy = Person('Huy', 26, 175, "Vietnam");
  alice.sayHello(); // In ra: Hello, my name is Alice and I am 30 years old.
  huy.sayHello();
  var thanh = Employee(name: 'thanh', age: 20, positison: 'sinh vien');
  thanh.displayInfo();
}

//! 8. Bài tập
//? Bài tập 1: Quản lý thông tin nhân viên
// Yêu cầu:
//?  - Tạo một lớp Employee với các thuộc tính: name, age, và position.
//?  - Tạo một constructor để khởi tạo các thuộc tính.
//?  - Tạo một phương thức displayInfo() để in thông tin nhân viên.
class Employee {
  String name;
  int age;
  String positison;

  Employee({required this.name, required this.age, required this.positison});

  void displayInfo() {
    print('name:$name,age$age,position:$positison');
  }
}

class BankAccount {
  final String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  // Getter cho số tài khoản
  String get bankNumber => _accountNumber;

  // Getter cho số dư
  double get totalBalance => _balance;

  // Method để gửi tiền
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  set depositVer2(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Method để rút tiền
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }

  set withdrawVer2(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }
}

//! Bài tập về tính Đóng gói (Encapsulation)
// Tạo một lớp Car để quản lý thông tin xe hơi.
// Lớp này có các thuộc tính riêng tư và các phương thức công khai để truy cập và thay đổi giá trị của các thuộc tính đó.

// Yêu cầu:
//  - Lớp Car có các thuộc tính riêng tư _brand, _model, và _year.
//  - Sử dụng các phương thức getter và setter để truy cập và thay đổi giá trị của các thuộc tính.
//  - Tạo phương thức displayInfo() để hiển thị thông tin của xe.

class Car {
  String _brand;
  String _model;
  int _year;
  Car(
    this._brand,
    this._model,
    this._year,
  );

  
  //tao getter de cong khai gia tri tao
  //tao setter de thay doi gia tri
//getter and setter
  String get Brandcar => _brand; //cong khai gia tri

  set brands(String newBrand) => _brand = newBrand;

  String get Modelcar => _model;

  set models(String newModel) => _model = newModel;

  String get Yearcar => _brand;

  set years(int newYear) => _year = newYear;

  void displayCar() {
    print('say hello');
  }
}

//? Kế thừa (Inheritance)
// Kế thừa cho phép một lớp mới (lớp con - subclass) kế thừa các thuộc tính và phương thức của một lớp hiện có (lớp cha - superclass)
// Điều này giúp tái sử dụng mã và tạo ra các cấu trúc lớp phức tạp hơn từ các lớp cơ bản.
//? Cách hoạt động:
// - Sử dụng từ khóa extends để định nghĩa một lớp con kế thừa từ lớp cha.
// - Lớp con có thể kế thừa tất cả các thuộc tính và phương thức từ lớp cha, và có thể ghi đè (override) các phương thức để thay đổi hành vi.
class Animal {
  void eat() {
    print('Animal is eating');
  }

  void run() {
    print('Animal is running');
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print("A cat is eating a fish");
  }

  void meow() {
    print('Dog is meoww...');
  }

  @override
  void run() {
    print("A cat runs and jumps");
  }
}

class Dog extends Cat {
  void bark() {
    print('Dog is barking');
  }
}

//! Bài tập tính Kế thừa (Inheritance)
// Tạo một lớp Employee và kế thừa nó để tạo ra các lớp con Manager và Developer.
// Yêu cầu:
//  - Lớp Employee có các thuộc tính name, age, và phương thức work().
//  - Lớp Manager kế thừa từ Employee và ghi đè (override) phương thức work() để in ra "Managing projects".
//  - Lớp Developer kế thừa từ Employee và ghi đè phương thức work() để in ra "Writing code"

class Employee1 {
  String name;
  int age;
  Employee1({
    required this.name,
    required this.age,
  });

  void work() {
    print('---');
  }
}

class Manager extends Employee1 {
  Manager({required super.name, required super.age});

  @override
  void work() {
    print('Managing projects');
  }
}

class Developer extends Employee1 {
  Developer({required super.name, required super.age});

  @override
  void work() {
    print('writing code');
  }
}
