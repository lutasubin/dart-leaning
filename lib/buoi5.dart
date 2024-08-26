// ignore_for_file: public_member_api_docs, sort_constructors_first
//! Tính đa hình
// Cho phép các đối tượng con thực thi các chức năng dc kế thừa từ lớp cha
// theo 1 cách khác, riêng biệt
// Điều này có nghĩa là lớp con có thể sử dụng một phương thức theo nhiều cách khác nhau

//? Cách hoạt động trong Dart:
// Trong các lớp con, Đa hình thường được thể hiện qua việc ghi đè (override) phương thức dc kế thừa từ lớp cha,
//    nơi mà mỗi lớp con có thể triển khai phương thức theo cách riêng của mình.

// void main() {
//   Animal dog = Dog();
//   Animal cat = Cat();

//   dog.makeSound(); // In ra: Gâu gâu!
//   cat.makeSound(); // In ra: Mèo méo meo mèo meo!

//   //tinh dien tich
//    Rectangle(width: 10, height: 20);
//   Circle(radius: 40);
//   print('${Rectangle(width: 10, height: 20)}');

// }

// class Animal {
//   void makeSound() {
//     print('Animal sound');
//   }
// }

// class Cat extends Animal {
//   @override
//   void makeSound() {
//     print('Mèo méo meo mèo meo =))))');
//   }
// }

// class Dog extends Animal {
//   @override
//   void makeSound() {
//     print('Gâu gâu!');
//   }
// }

//bt
// abstract class Shape {
//   double area();
// }

// class Circle extends Shape {
//   double radius;
//   Circle({
//     required this.radius,
//   });

//   @override
//   double area() {
//     return 3.14 * radius * radius;
//   }
// }

// class Rectangle extends Shape {
//   double width;
//   double height;
//   Rectangle({
//     required this.width,
//     required this.height,
//   });

//   @override
//   double area() {
//     return width * height;
//   }
// }

// void main(){
//   final tron =Circle(radius: 50);
//   print('dien tich hinh tron:${tron.area()}');
//   final hcn =Rectangle(width: 20, height: 30);
//     print('dien tich hinh chu nhat:${hcn.area()}');

//     final sum =tron.area()+hcn.area();

//     print('tong dien tich cac hinh:$sum');

// }

//! 1. Tính trừu tượng
// Dùng để trừu tượng hoá các yêu cầu của bài toán thành những thực thể chung nhất
// để giúp mở rộng, nâng cấp sau này.
// tính trừu tượng giúp ta xác định nhanh những
//? Cách hoạt động trong Dart:
//?   - Trừu tượng hóa được thực hiện thông qua các lớp trừu tượng (abstract classes)
//!   - Abstract class không thể được khởi tạo trực tiếp
//?      mà chỉ có thể làm lớp cha cho các lớp con.
//?   - Các lớp con sẽ kế thừa (extends) hoặc thực thi (implements) các phương thức trừu tượng từ abstract class cha.


//! 2. Abstract class
// abstract class là class trừu tượng, các class khác sẽ kế thừa hoặc thực thi từ class này.
// Mục đích của abstract class giống như 1 bản thiết kế
//  dùng để chỉ định các properties, method phải có trong class con, chứ ko quan tâm nội dung method


//! 3. extends
//? Các lớp con sẽ kế thừa (extends) các phương thức trừu tượng từ abstract class cha


// abstract class Vehicle {
//   // Abstract Class có thể chứa các thuộc tính có hoặc không có giá trị khởi tạo.
//   int odometer;
//   // Khi bạn định nghĩa thuộc tính của class, bạn bắt buộc phải có constructor
//   Vehicle({required this.odometer});
//   // Vehicle({this.odometer = 10});

//   // Bạn có thể định nghĩa các thuộc tính cụ thể trong abstract class và cung cấp giá trị khởi tạo cho chúng.
//   // Các lớp con có thể kế thừa và sử dụng trực tiếp các thuộc tính này.

//   // method chỉ khai báo tên, hoàn toàn ko có body
//   void moveForward(int meter);
// }

// void main(List<String> args) {
//   // Abstract class ko thể sử dụng trực tiếp (ko thể khởi tạo), mà phải sử dụng thông qua các lớp con

//   final car = Car(seatCount: 4, odometer: 20);
//   car.moveForward(12);
// }

// class Car extends Vehicle {
   // Nếu thuộc tính trong abstract class không có giá trị khởi tạo,
   // thì lớp con cần phải khởi tạo chúng khi tạo đối tượng.
//   final int seatCount;
//   Car({required this.seatCount, required super.odometer});

  // class con bắt buộc phải override method moveForward.
  // Bởi vì class cha là abstract nên chỉ defined tên method chứ ko defined nội dung method
//   @override
//   void moveForward(int meter) {
//     print("Car is moving $meter");
//   }
// }



//bt
//? Yêu cầu:
//  - Tạo lớp trừu tượng Employee với các thuộc tính name và age.

//  - Định nghĩa phương thức trừu tượng calculateSalary() trong lớp Employee.

//  - Tạo lớp FullTimeEmployee kế thừa từ Employee với thuộc tính bổ sung monthlySalary
//    và triển khai phương thức calculateSalary() trả về lương hàng tháng.

//  - Tạo lớp PartTimeEmployee kế thừa từ Employee với thuộc tính bổ sung hourlyRate và hoursWorked.
//    Triển khai phương thức calculateSalary() trả về lương dựa trên số giờ làm việc và mức lương theo giờ.

//? Kết quả mong đợi:
// In ra lương của nhân viên toàn thời gian và bán thời gian,
// được tính toán dựa trên cách triển khai cụ thể trong từng lớp con.
//! Giải bài tập Abstraction sử dụng extends: 


import 'dart:math';

abstract class Employee {
  String name;
  int age;
  Employee({
    required this.name,
    required this.age,
  });

  double calculateSalary();
}

class FullTimeEmployee extends Employee {
    // ignore: prefer_typing_uninitialized_variables
    final double monthlySalary;

  FullTimeEmployee(
      {required this.monthlySalary, required super.name, required super.age});

  @override
  double calculateSalary() {
   
    return monthlySalary;
  }


}

class PartTimeEmployee extends Employee{
  final double hourlyRate;
  final double hoursWord;

  PartTimeEmployee({required this.hourlyRate,required this.hoursWord,required super.name, required super.age});
  
  @override
  double calculateSalary() {
    return hoursWord*hourlyRate;
  }

}

// void main(){
//   final fullTimeEmployee = FullTimeEmployee(monthlySalary: 2000, name: 'thanh', age: 17);
//   print( 'so luong cua nhan vien full time la : ${fullTimeEmployee.calculateSalary()}');

//   final partTimeEmployee =PartTimeEmployee(hourlyRate: 10, hoursWord: 20, name: 'son', age: 16);
//   print('so luong cua nhan vien parttime la : ${partTimeEmployee.calculateSalary()}');
// }

//! 4. Interface
//? Các lớp con sẽ thực thi (implements) các phương thức trừu tượng từ abstract class cha.
// Trong Dart, interface không có một từ khóa cụ thể
// mà được thể hiện thông qua việc sử dụng từ khóa implements.

// implements được sử dụng khi một lớp muốn thực hiện (implement) một giao diện (interface)
// hoặc muốn triển khai các phương thức được định nghĩa trong một lớp khác nhưng không kế thừa chúng.
//! Đặc điểm Interface
// Khi sử dụng implements, lớp mới phải triển khai
// tất cả các phương thức và thuộc tính của Interface nó đang triển khai, ngay cả khi lớp đó đã có triển khai mặc định.
abstract class Animal {
  // Khi bạn định nghĩa thuộc tính trong lớp và sau đó sử dụng lớp này như một interface
  // các lớp thực hiện (implementing class) phải triển khai (thường là cung cấp giá trị cho)
  // tất cả các thuộc tính và phương thức được định nghĩa trong Interface.

  // Khác với abstract class, các thuộc tính trong interface dù có giá trị khởi tạo.
  // Lớp con thực hiện phải cung cấp giá trị cho các thuộc tính đó.

  String name;
  int age;
  Animal({
    this.name = "john",
    this.age = 1,
  });
  void makeSound(){
    print('Animal sound');
  }

  void sleep() {
    print('Animal is sleeping');
  }
}
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }

  @override
  void sleep() {
    print('Dog is sleeping');
  }

  @override
  int age;

  @override
  String name;

  Dog(this.name, this.age);
}



 abstract class Shape{
  double getArea();
  
 }

class Circle implements Shape {

  final double radius;
  Circle({
    required this.radius,
  });
  @override
  double getArea() {
    return pi *radius *radius;
  }
   
 }

class Square implements Shape {
  double side;
  Square({
    required this.side,
  });
  @override
  double getArea() {
    return side*side;
  }
   
 }

 void main(){
  final tron =Circle(radius: 30);
  print( 'dien tich ht: ${tron.getArea()}');
 }

 //! Bài tập Interface sử dụng implements
// Bạn sẽ tạo một Interface Shape để đại diện cho các hình học
// Sau đó, bạn sẽ tạo các lớp Circle và Square thực hiện giao diện này.
// Mỗi lớp sẽ tính diện tích của hình tương ứng.
//git@github.com:huyho-vuatho/dart-learning.git

//? Yêu cầu:
//  - Tạo Interface Shape với phương thức getArea() mà không có phần triển khai.

//  - Tạo lớp Circle thực hiện Interface Shape.
//    Lớp này có thuộc tính radius và triển khai phương thức getArea() để tính diện tích hình tròn.
//    Diện tích hình tròn = Pi(3.14) x radius x radius

//  - Tạo lớp Square thực hiện Interface Shape.
//    Lớp này có thuộc tính side và triển khai phương thức getArea() để tính diện tích hình vuông.
//    Diện tích hình vuông = cạnh x cạnh

//  - Trong phương thức main(), tạo danh sách các đối tượng Shape và in ra diện tích của mỗi hình.
//? kết quả mong đợi
// In ra diện tích của hình tròn và hình vuông,
// được tính toán dựa trên cách triển khai cụ thể trong mỗi lớp thực hiện Interface Shape.
// class Shape {
//   // double getArea();
//   double getArea() {
//     return 1 + 1;
//   }
// }

// class Size {
//   double getSize() {
//     return 1 + 1;
//   }
// }

// class Circle implements Shape, Size {
//   final double radius;
//   Circle({
//     required this.radius,
//   });

//   @override
//   double getArea() {
//     return pi * radius * radius;
//   }

//   @override
//   double getSize() {
//     return 20 * 20;
//   }

  // @override  
   // double getArea() {
  //   return pi * radius * radius;
   // }
// }
// class Square implements 
// void main(List<String> args) {
//   final circle = Circle(radius: 10);
//   print("Diện tích hình tròn: ${circle.getArea()}");
//   final square = Square(side: 5);
//   print("Diện tích của hình vuông là: ${square.getArea()}");
// }
//! ******----------------------------------------------------------------******
//! So sánh extends và implements
//? extends:
//    - Được sử dụng để kế thừa từ một lớp cha duy nhất.
//    - Lớp con có thể sử dụng lại mã và ghi đè các phương thức của lớp cha.
//? implements:
//    - Được sử dụng để thực hiện một Interface hoặc lớp,
//    - Yêu cầu phải triển khai tất cả các phương thức được định nghĩa mà không kế thừa mã từ lớp đó.
//    - Lớp có thể thực hiện nhiều giao diện hoặc lớp cùng lúc.

// Interface sẽ định nghĩa các hành động (method) và thuộc tính (properties) mà các lớp con bắt buộc phải làm

// Abstract định nghĩa các hành động (method) và thuộc tính (properties) mà các lớp con phải làm
// nếu các method và property ở abstract chưa dc triển khai hoặc gán giá trị
// class Circle extends Shape {}

// class Circle2 implements Shape2 {
//   @override
//   double size2;
//   Circle2({
//     required this.size2,
//   });

//   @override
//   double getArea2() {
//     return 10;
//   }
// }
// abstract class Shape {
//   double size;
//   Shape({
//     this.size = 10,
//   });
//   double getArea() {
//     return 1;
//   }
// }
class Shape2 {
  double size2;
  Shape2({
    this.size2 = 10,
  });
  double getArea2() {
    return 10;
  }
}