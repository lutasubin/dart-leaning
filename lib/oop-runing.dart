import 'package:dart_application_1/buoi4.dart';

void main() {
  final car1 = Car('toyota', 'fartuner', 2033);
//   print('xe infor:${car1.brand}');//private nen khong goi ra ddc
//chi co public goi duoc
//   car1.brand='audi';
//   print({car1.brand});
  print('car infor:name:${car1.Brandcar},model:${car1.Modelcar},year:${car1.Yearcar}');//cong khai ca ba gia tri

  car1.brands="thanh";//thay doi dung setter;
  car1.displayCar();
  // bt employee
  final employee =Employee1(name: 'thanh', age: 20);
  final manager =Manager(name: 'som', age: 10);
  manager.work();
  final deveper =Developer(name: 'teb', age: 30);
  deveper.work();
}
