package org.study.week2.javabuildingblock.object;

public class InitOrder {

  // Static variable
  static int s = initStatic();
  //Instance variable
  int i = initInstance();

  //static initializer blocks
  static { System.out.println("Static block"); }
  //instance initializer
  { System.out.println("Instance block"); }

  //Constructor
  InitOrder() { System.out.println("Constructor"); }

  static int initStatic() { System.out.println("Static variable"); return 1; }
  int initInstance() { System.out.println("Instance variable"); return 2; }

  public static void main(String[] args) {
    /**
     * Static variable và static initializer blocks chạy 1 lần khi class được load
     * Instance variable và instance initializer blocks chạy mỗi lần khi tạo object, theo thứ tự xuất hiện trong code
     * Constructor chạy cuối để khỏi tạo object
     */
    new InitOrder();
    new InitOrder();
  }
}
