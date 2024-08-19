
Future<void> main() async {
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

  
}