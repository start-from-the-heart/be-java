package org.study.week2.javabuildingblock.object;

import java.sql.SQLOutput;

// Class này không thể bị kế thừa
public final class FinalKey {

  static String NOT_A_KEY = "A";
  // Static variable phải được gán giá trị khi khai báo hoặc trong initializer block
  static final String KEY;
  static {
    KEY = "key";
  }

  final String name;
  String value;
  FinalKey(String name) {
    // Instance variable phải được gán giá trị ngay khi khai báo hoặc trong constructor
    this.name = name;
  }
  void test() {
    // local variable với final không thể được thay đổi giá trị
    final int x = 5;
  }

  public static void main(String[] args) {
    FinalKey f = new FinalKey("key");
    NOT_A_KEY = "B";
    System.out.println(NOT_A_KEY);
  }
}
