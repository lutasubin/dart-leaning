import 'dart:async';

Future<void> main() async {
  var myName = 'huy 2';
  print('thanh nguyen');

  var age = 2;

  age = 25; //phai dung so nguyen
  // String name ="nguyen duc thanh";

  // bool isStudent =true;

  // name ='lo van son';
  print('gia tri cua age la:$age');
  print('gia tri cua age la $age');

  final year = 2014;

// year=2025;     khong cho  gans lai
  const month = 0;

  // month=10; khong dc gan
//dynamic
  dynamic a = 'iii';
  print('gia tri cua a la:$a');
  a = 1;

  print('gia tri cua a sau khi  thay doi la $a');
//int,double,string,bool,list

//bien 1 cachs luu tru va quan ly du lieu trong chuong trinh

//ban co the khai bao bien voi chi  dinh hoac khong can chi dinh kieu dl
// vd final,const khai bao bien khong thay doi|gan duy nhat

//const khong ddc gan sau
  const b = 200;
  print(b);

//final gan sau ddc
  final String c;
  print('thhjh');

  c = 'thanh nguyen';
  print('c:$c');

//data type

//kieu object(sow khai)
  Object obj = Object();
  obj.toString();
//ham con cua object
  String day = 'abcd';
  day.toString();

  int mao = 10;
  mao.toString();
//kieu num vua la double vua la int
  num number = 1;
  number = 2.1;
//int
  int d=1;
  // d=1.1;khong cho phep

//double
  double g= 2.1;
  g=2;//bo cua so nguyen nen khai bao ve so nguyen ddc\

//***************************************** */
//string

String houjun ='Viet Nam';
String t=houjun.toUpperCase();//chuoi in hoa
bool u=houjun.contains('t');//cet xem co chua chu trong chuoi khong

print(t);
print(u);


String chuoi= '  VTI adecarmi 2024 ';
String th=chuoi.toUpperCase();
print("gia tri vti la:$th");
print(th.trim());

//********************************* */
// String houun ='viet \n nam';

// String houu ='viet\tnam';

// print(houun);//xuong dong
// print(houu);//1 tab

//************************************ */

//kieu boolean

bool thanho =true;//(false)
int discountValue = thanho ? 50 : 0;
print(discountValue);
//kieu record
var ten =(42,'thanh',50);
//truy cap gia tri bang cac vt
print(ten.$1);
print('************************************');
//list
List thanh=['thanh',14,15,16];
thanh.add('thanh');
thanh.indexOf('than',1);
thanh.insert(1, 50);
print(thanh);
thanh.forEach((element) {
  print(element);
 });
//set
Set<String> tg={'thanh','son','trung','nam'};



  // buoi hom truoc(tiep buoi1)
  // //! late variable

  // Dùng cho biến dc gán gtri sau, ko cần gán khi khai báo.
  // Nguyên tắc khai báo biến kiểu late phải chỉ định kiểu dữ liệu rõ ràng
  // hoặc phải có từ khoá khai báo biến (var, final) đi theo

  //? ghi chú:
  //? 1. sử dụng late variable để tiết kiệm bộ nhớ
  //?   vì biến late chỉ dc cấp phát bộ nhớ khi nó dc sử dụng, nếu ko sử dụng thì ko cấp phát
  //? 2. Các biến late luôn phải có gtri trc khi sử dụng, nếu ko sẽ crash app
  print("Thời điểm trc khi late variable dc gán: ${DateTime.now()}");
  late DateTime currentTime2;
  print("waiting....");
  await Future.delayed(Duration(seconds: 5), () {
    print("done");
    return;
  });
  currentTime2 = DateTime.now();
  print("Thời điểm sau khi late variable dc gán: $currentTime2");

  //! List, Set, Map
  /// List, Set, Map là các kiểu dữ liệu phổ biến dc dùng để lưu trữ và quản lý tập hợp các gtri
  /// Mỗi kiểu dữ liệu có cách tổ chức và đặc điểm riêng phù hợp với các tính huống khác nha
  //! List
// //! Set
  // Kiểu Set là tập hợp các ptu ko có thứ tự và ko chứa các ptu trùng lặp
  // Mỗi ptu trong Set là duy nhất
  // Set ko đảm bảo thứ tự các ptu

  // Set<String> fruits = {"apple", "banana", "orange"};
  // print(fruits); // In ra {apple, banana, orange}

  // fruits.add("banana"); // thêm banana lần nữa
  // print(fruits); // Vẫn in ra {apple, banana, orange} (ko có ptu trùng lặp)

  // fruits.remove("orange"); // xoá ptu "orange"
  // print(fruits); // In ra {apple, banana}
// //! Map
  // Map là 1 tập hợp các cặp khoá-giá trị (key-value pairs), trong đó:
  // mỗi khoá (key) là duy nhất và dc liên kết với 1 giá trị (value)
  // Bạn có thể sử dụng khoá (key) để truy cập giá trị tương ứng

  // Map tương tự như 1 từ điển (dictionary) trong các ngôn ngữ lập trình khác

  Map<String, int> phoneBook = {
    "Alice": 123456,
    "Bob": 9865523,
    "Charlie": 112233
  };
  print(phoneBook["Alice"]); // In ra 123456 (truy cập giá trị thông qua khoá)

  phoneBook["David"] = 445566; // Thêm cặp khoá-giá trị mới
  print(
      phoneBook); // In ra {Alice: 123456, Bob: 9865523, Charlie: 112233, David: 445566}

  phoneBook["Alice"] = 555555; //Cập nhật giá trị của khoá "Alice"
  print(
      phoneBook); // In ra {Alice: 555555, Bob: 9865523, Charlie: 112233, David: 445566}
}










