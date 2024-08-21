void main(){
//! Null safety
  // Null Safety đảm bảo rằng các biến không thể giữ giá trị null
  // trừ khi bạn cho phép chúng làm như vậy một cách 

  
//! Non-nullable types (Kiểu không cho phép null)
  // Mặc định, các biến trong Dart không thể chứa giá trị null.
  // Nếu bạn khai báo một biến mà không chỉ định nó có thể là null,
  // Dart sẽ đảm bảo rằng biến đó luôn có giá trị không null.
  // int number = 5; // number không thể là null
  // number = null;

  
//! Nullable types (Kiểu cho phép null)
  // Nếu bạn muốn cho phép một biến có thể chứa giá trị null,
  // bạn phải chỉ định điều đó bằng cách thêm ? vào sau kiểu dữ liệu.
  // int? maybeNumber;
  // maybeNumber = null; // OK
  // print(maybeNumber);
  // maybeNumber = 5;
  // print(maybeNumber);
  //! Null-aware operators (Toán tử null-aware)
  // ?: Sử dụng để đánh dấu kiểu dữ liệu có thể null.
  // ?.: Toán tử truy cập điều kiện, chỉ thực thi nếu đối tượng không phải là null.
  // ??: Toán tử cung cấp giá trị thay thế nếu giá trị là null.
  // ??=: Gán giá trị mặc định nếu biến là null.
 
  String? name;
  print("The value of name: $name");
  print("the length of name: ${name?.length}"); // Sẽ in ra null thay vì gây lỗi

  String greeting = name ?? 'Hello, Guest!';
  print(greeting); // In ra 'Hello, Guest!'

  name ??= "John Doe";
  print("The value of name: $name"); // In ra 'John Doe'


  // //! The ! operator (Toán tử ép buộc không-null)
  // Nếu bạn chắc chắn rằng một biến nullable có giá trị không phải null tại một thời điểm nào đó trong mã
  // bạn có thể sử dụng toán tử ! để ép buộc Dart coi nó là non-nullable.

  // Hãy cẩn thận khi sử dụng !, vì nếu biến thực sự là null, điều này sẽ gây ra lỗi.
  final intNumber = 3;
  String? name1;
  if (intNumber % 2 == 0) {
    name1 = 'Alice';
  }
  print(name1?.length ?? "name1 null rồi"); // OK vì name không phải là null
 }