void main() {
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

  // //! Null safety và Collections (Bộ sưu tập với Null Safety)
  // Các Collection như List, Set, và Map cũng có thể được kiểm soát với Null Safety.
  // Bạn có thể chỉ định liệu các phần tử trong bộ sưu tập có thể là null hay không
  // bằng cách sử dụng ?.
  List<int?> numbers = [1, 2, null, 4, null]; // Danh sách cho phép giá trị null
  print("List of nullable integer: $numbers");
  List<int> nonNullableNumbers = [
    1,
    2,
    3,
    4,
  ]; // Danh sách không cho phép giá trị null
  print("List of non-nullable integer: $nonNullableNumbers");

  //! Function
  // Function trong Dart là một đoạn code có thể được gọi để thực thi một nhiệm vụ cụ thể
  // Function giúp bạn tổ chức code của mình thành các đoạn code có thể tái sử dụng,
  // giúp code trở nên rõ ràng, dễ bảo trì và dễ quản lý hơn.

  // //! Khai báo Function
  // Một function được khai báo bằng cách sử dụng từ khóa 'void' (nếu function
// Function không trả về giá trị
  void sayHello() {
    print('Hello, World!');
  }

  // Function trả về giá trị
  // Function có thể có tham số, cho phép bạn truyền dữ liệu vào function khi gọi nó.
  // Tham số được khai báo trong dấu ngoặc tròn ().
  int add(int a, int b) {
    // Function có thể trả về một giá trị sử dụng từ khóa return.
    // Kiểu trả về của function cần được khai báo trước tên function.
    return a + b;
  }

//! Gọi Function
  // Để sử dụng một function, bạn chỉ cần gọi tên function đó và truyền các tham số nếu có.
  sayHello(); // Gọi function sayHello

  int result = add(5, 3); // Gọi function add và lưu kết quả
  print(result); // In ra 8


//! Optional Parameters (Tham số tùy chọn)
  // Trong Dart, bạn có thể định nghĩa các tham số tùy chọn cho function.
  // Có hai loại tham số tùy chọn

  //? Tham số tùy chọn có dấu ngoặc vuông []: Các tham số này có thể có hoặc không khi gọi function.
  //? Tham số có tên {}: Cho phép bạn đặt tên cho các tham số và không bắt buộc phải truyền theo thứ tự khi gọi.

  void printMessage(String message, int number) {
    print("message là: $message, number: $number");
  }
  // // Tham số có tên
  // void printDetails({String? name, int? age}) {
  //   print('Name: $name, Age: $age');
  // }
printMessage("huy", 123); // In ra 'Greeting: Hello'

  // printDetails(age: 123, name: "huy"); // In ra 'Name: Alice, Age: 30'
void printMessage2(
      {required String? message, required int number, String? prefix}) {
    if (prefix != null) {
      print('$prefix: $message');
    } else {
      print("message là: $message, number: $number");
    }
  }

  printMessage2(message: "huy", number: 456);
  printMessage2(message: "huy", number: 456, prefix: "abcd");

  

}
