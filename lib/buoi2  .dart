Future<void> main()  async {

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


