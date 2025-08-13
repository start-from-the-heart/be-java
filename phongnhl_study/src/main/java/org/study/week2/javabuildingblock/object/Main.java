package org.study.week2.javabuildingblock.object;

public class Main {
  public static void main(String[] args) {
    /*
     * Quy trình tạo instance
     * 1. JVM cấp phát vùng nhớ cho object
     * 2. Các biến instance được gán giá trị mặc định (null, 0, false)
     * 3. Chạy instance initialize
     * 4. Constructor được gọi để gán giá trị ban đầu
     */
    // tạo instance mới
    /*
     * biến tham chiếu person được lưu tại Stack(bộ nhớ ngắn hạn) và chỉ chứa địa chỉ trỏ tới object ở Heap
     * Stack tự động giải phóng khi phương thức kết thúc
     * Object thực sự được lưu tại Heap(bộ nhớ dài hạn chứa dữ liệu Phong, 21 tuổi,...)
     * Object tồn tại cho tới khi không còn biến tham chiếu nào trỏ tới nó -> GC sẽ dọn dẹp
     * Constructor chạy trong vùng Heap để lưu giá trị ban đầu
     */
//    Person person = new Person("Phong", 21, "Bắc Ninh", true);

    Person person1 = new Person();
//    // Truy cập biến instance mà chưa khởi tạo sẽ có giá trị mặc đinh (null, 0, false)
//    System.out.println(person1.getName());
//    System.out.println(person1.getAge());
//    System.out.println(person1.isGender());
  }
}
