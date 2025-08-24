package org.study.week3.operator;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Operator {
    public static void main(String[] args) {

        // arithmetic & toán tử đơn giản
        int a = 5, b = 2;
        System.out.println(a + b); // 7
        System.out.println(a - b); // 3
        System.out.println(a * b); // 10
        System.out.println(a / b); // 2 (integer division)
        System.out.println(a % b); // 1

        int x = 3;
        System.out.println(4 + ++x); // 4 (prefix: tăng trước rồi in)
        System.out.println(4 + x--); // 4 (postfix: in trước rồi giảm)
        System.out.println(x);   // 3

        // assigment operator
        int z = 10;
        z += 5;  // tương đương z = z + 5 → 15
        z *= 2;  // 30
//		z += 3.5;
        System.out.println("z:" + z);

        //Relational & Logical Operators
        int c = 5, d = 10;

        System.out.println(c < d);   // true
        System.out.println(c == d);  // false
        System.out.println(c != d);  // true

        // với || và && thì nếu về trái đủ để quyết định còn & và | luôn thực hiện cả 2 vế
        boolean g = true, h = false;
        System.out.println("g && h:" + (g && h));  // false
        System.out.println("g || h:" + (g || h));  // true
        // cho dù về trái có đủ điều kiện thì | và & vẫn sẽ thực hiện vế phải
        System.out.println("g & h:" + (g & h));  // false
        System.out.println("g | h:" + (g | h));  // true

        //Ternary Operator(toán tử 3 ngôi)
        // 2 nhánh của ? và : phải có kiểu tương thích với kiểu trả về
        int age = 20;
        String result = (age >= 18) ? "Adult" : "Child";
        System.out.println(result); // Adult

        // instanceof
        String s = "Hello";
        System.out.println(s instanceof String); // true
        System.out.println(s instanceof Object); // true
    }
}
