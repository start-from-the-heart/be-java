package org.study.week2.javabuildingblock.datatype;

public class ReferenceTypes {
  // Biến kiểu tham chiếu là biến chứa địa chỉ trỏ đến object trên Heap
  /**
   * Có thể là
   * Class String, Scanner, Dog, Person,...
   * Interface(Runnable,...)
   * Array(int[], String[])
   * Enum(DayOfWeek)
   */
  // Có thể chứa giá trị null
  public static void main(String[] args) {
    String name = "Phong"; // biến name chứa địa chỉ object "Phong" trong heap
    int[] nums = {1, 2, 3};

    int a = 5; //primitive
    int b = a; // copy giá trị của a -> b thay đổi ko ảnh hưởng a
    b = a + 5;
    System.out.println(a +  ", " + b);

    StringBuilder  s1 = new StringBuilder ("Phong"); // reference
    StringBuilder  s2 = s1; // copy địa chỉ -> s2 thay đổi thì s1 thay đổi theo
    s2.append(" Lâm");
    System.out.println(s1);
  }
}
