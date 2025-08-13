package org.study.week2.javabuildingblock.object;

public class Variables {
  /**
   * Static Variable: khai báo trong class, có từ static
   * Tồn tại suốt vòng đời chương trình
   * Lưu trữ trong method Area (Metaspace từ Java 8 trở lên)
   */
  private static String area;

  /**
   * Garbage Collection
   * Instance Variables: khai báo trong class, ngoài method, không có từ khóa static
   * Life Cycle: tồn tại khi object tồn tại
   * Lưu trữ giá trị tại Heap
   * Có giá trị mặc đinh
   */
  private String  name;

  public void action() {
    /*
      local variables: khai báo trong method, constructor hoặc block
      Life cycle: Tồn tại khi block đang chạy -> xóa khi thoát method
      Lưu trong Stack(bộ nhớ tạm)
      Không có giá trị mặc định
     */
    String punch = "Punch";
    System.out.println(punch);
  }
}
