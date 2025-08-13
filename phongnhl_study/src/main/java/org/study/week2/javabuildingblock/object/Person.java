package org.study.week2.javabuildingblock.object;

public class Person {
  private String name;
  private int age;
  private String address;
  private boolean gender;

  {// Instance Initialize block
    System.out.println("Instance Initialize block");
    System.out.println("Khối lệnh luôn chạy trước Constructor");
  }

  //Constructor có tên giống class và không có giá trị trả về
  public Person() {
    System.out.println("Create Constructor");
  }

  public Person(String name, int age, String address, boolean gender) {
    this.name = name;
    this.age = age;
    this.address = address;
    this.gender = gender;
  }

  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public int getAge() {
    return age;
  }
  public void setAge(int age) {
    this.age = age;
  }
  public String getAddress() {
    return address;
  }
  public void setAddress(String address) {
    this.address = address;
  }
  public boolean isGender() {
    return gender;
  }
  public void setGender(boolean gender) {
    this.gender = gender;
  }

  public void punch() {
    System.out.println("Đấm thẳng");
  }


}
