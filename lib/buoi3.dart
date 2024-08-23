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

//bt them
  List<int> generateNumbers({required int n}){
    List<int> numbers=[];
    for (int i = 1; i <= n; i++) {
      numbers.add(i);
    }
    return numbers;

    
  }

  List<int>thanh=generateNumbers(n: 8);

  print(thanh);
  




 // //! Error handling
//! Exception
  // Ngoại lệ là các sự kiện bất thường xảy ra trong quá trình thực thi chương trình,
  // chẳng hạn như chia một số cho 0, truy cập vào một chỉ số không hợp lệ trong danh sách, hoặc không tìm thấy tệp tin.
  // Ngoại lệ thường khác với lỗi (error) vì chúng có thể được dự đoán và xử lý.
//! Cơ chế xử lý ngoại lệ (Exception Handling)
  // Dart cung cấp các cấu trúc try, catch, on, finally, và throw để xử lý ngoại lệ.
//! try và catch
  // try: Dùng để bao quanh đoạn mã mà bạn dự đoán có thể gây ra ngoại lệ.
  // catch: Dùng để bắt ngoại lệ nếu xảy ra và xử lý nó.

  // try {
  //   int result = 10 ~/ 0; // Phép chia gây ra ngoại lệ
  // } catch (e) {
  //   print('Caught an exception: $e');
  // }
//! on và catch
  //? on: Dùng để bắt một loại ngoại lệ cụ thể.
  // Nếu bạn muốn xử lý các loại ngoại lệ khác nhau theo cách khác nhau,
  // bạn có thể sử dụng nhiều khối on.
// //? catch: Có thể được sử dụng cùng với on để bắt bất kỳ ngoại lệ nào khác
  //  hoặc để truy cập thông tin chi tiết về ngoại lệ.
  // try {
  //   int result = 10 ~/ 0;
  // } on IntegerDivisionByZeroException {
  //   print('Cannot divide by zero');
  // } catch (e) {
  //   print('Caught an exception: $e');
  // }
//! finally
  // Dùng để thực hiện các hành động mà bạn muốn thực hiện bất kể ngoại lệ có xảy ra hay không.
  // Thường được sử dụng để dọn dẹp tài nguyên như đóng tệp tin hoặc giải phóng bộ nhớ.
  // try {
  //   int result = 10 ~/ 0;
  // } catch (e) {
  //   print('Caught an exception: $e');
  // } finally {
  //   print('This will always execute');
  // }
// //! throw
  // Dùng để ném ra một ngoại lệ.
  // Bạn có thể ném ngoại lệ mặc định của Dart hoặc tự định nghĩa một ngoại lệ của riêng mình.
  // void checkAge(int age) {
  //   if (age < 18) {
  //     throw Exception('You must be at least 18 years old.');
  //   }
  // }

  // try {
  //   checkAge(15);
  // } catch (e) {
  //   print('Caught an exception: $e');
  // }
//! ngoại lệ tuỳ chỉnh:
//   void checkAge(int age) {
//     if (age < 18) {
//       throw AgeException('Age is too low.');
//     } else if (age > 60) {
//       throw Exception("tuổi quá già");
//     }
//   }
// try {
//     checkAge(61);
//   } on AgeException catch (e) {
//     print('Caught an exception: ${e.cause}');
//   } catch (e) {
//     print('Lỗi khác: $e');
//   }
// class AgeException implements Exception {
//   String cause;
//   AgeException(this.cause);
// }
// }
}
