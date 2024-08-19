import 'dart:async';

void main() {
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




}



