package org.study.week3.operator;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

public class StudentManager {
	static Scanner sc = new Scanner(System.in);
	static Random	random = new Random();

	public static void main(String[] args) {

		System.out.println("Nhập số lượng sinh viên: ");
		int n = sc.nextInt();

		List<Student> students = new ArrayList<Student>();
		// nhập danh sách sinh viên
		for (int i = 1; i <= n; i++) {
			Integer age = random.nextInt(16, 19);
			Student student = new Student("Student"+i, age, random.nextFloat(4.0F,10.0F));
			students.add(student);
		}

		int choice;
		do {
			System.out.println("\n--- MENU ---");
			System.out.println("1. In danh sách");
			System.out.println("2. Tìm sinh viên theo tên");
			System.out.println("3. Cập nhật điểm");
			System.out.println("4. Thoát");
			System.out.print("Chọn: ");
			choice = sc.nextInt();
			sc.nextLine();
			switch (choice) {
			case 1:
				printAll(students);
				break;
			case 2:
				System.out.println("Nhập tên học sinh: ");
				String name = sc.nextLine();
				findStudent(name, students);
				break;
			case 3:
				System.out.println("Nhập tên học sinh cần sửa: ");
				String nameSeach = sc.nextLine();
				System.out.println("Điểm mới: ");
				int newGrade = sc.nextInt();
				sc.nextLine();
				updateScore(nameSeach, newGrade, students);
				break;

			}
		}while(choice != 4 && choice > 0 && choice < 4 );
	}

	static void printAll(List<Student> students) {
		StringBuilder sb = new StringBuilder();
		float maxGrade = Float.MIN_VALUE;
		float minGrade = Float.MAX_VALUE;
		float sumGrade = Float.MIN_VALUE;
		String maxName = "";
		String minName = "";

		for (Student student : students) {
			if (maxGrade < student.getGrade()) {
				maxGrade = student.getGrade();
				maxName = student.getName();
			}
			if (minGrade > student.getGrade()) {
				minGrade = student.getGrade();
				minName = student.getName();
			}
			sumGrade +=  student.getGrade();
		}

		for (Student student : students) {
			sb.append("Name: "+student.getName() + " ");
			sb.append("Age: "+student.getAge() + " ");
			sb.append("Grade: "+student.getGrade() + "\n");
		}

		float avgGrade = sumGrade /students.size();
		System.out.println("\n--- Danh sách ---\n" + sb);
		System.out.println("Điểm TB: " + avgGrade);
		System.out.println("Cao nhất: " + maxName + " (" + maxGrade + ")");
		System.out.println("Thấp nhất: " + minName + " (" + minGrade + ")");
	}

	static void findStudent(String name, List<Student> students) {
		for (Student student : students) {
			if (student.getName().equalsIgnoreCase(name)) {
				System.out.println(student);
				return;
			}
		}
		System.out.println("Không tìm thấy!");
	}

	static void updateScore(String name, int newGrade, List<Student> students) {
		for (Student student : students) {
			if(student.getName().equalsIgnoreCase(name)) {
				student.setGrade(newGrade);
				System.out.println("Sửa thành công!");
				return;
			}
		}
		System.out.println("Không tìm thấy học sinh!!!");
	}

	static void deleteStudent(String name, List<Student> students) {
// Không nên đùng enhanced for-each loop
// Vòng for dùng iterator ngầm bên trong để duyệt
// Khi dùng remove, list thay đổi trong khi iterator chưa kịp cập nhật => sung đột
// Throw ConcurrentModificationException
//		for (Student student : students) {
//			if(student.getName().equalsIgnoreCase(name)) {
//				students.remove(student);
//			}
//		}
		// có 3 kiểu xóa an toàn
		// dùng iterator trực tiếp
//		Iterator<Student> iterator = students.iterator();
//		while (iterator.hasNext()) {
//			Student student = iterator.next();
//			if (student.getName().equalsIgnoreCase(name)) {
//				iterator.remove();
//				return;
//			}
//		}
		// dùng vòng for với chỉ số index
//		for(int i = 0; i < students.size(); i++) {
//			if(students.get(i).getName().equalsIgnoreCase(name)) {
//				students.remove(i);
//				i--;
//				return;
//			}
//		}

        //dùng kiểu iterator cho vòng for
        for (Iterator<Student> it = students.iterator(); it.hasNext(); ) {
            if (it.next().getName().equalsIgnoreCase(name)) {
                it.remove();
				return;
			}
        }


        //dùng removeIf
//		students.removeIf(student -> student.getName().equalsIgnoreCase(name));
	}
}
