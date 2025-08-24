package org.study.week3.operator;

public class ControlFlow {
    public static void main(String[] args) {
        // gắn nhãn cho vòng for
        outer:
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.println("i:" + i + ",j:" + j);
                if (j == 2) break outer;

            }
        }
        int operator = 6;

        int big = 1_000_000;
        System.out.println(big);
        switch (operator) {
            // Not compile vì kiểu của case và operator khác nhau
//			case "I":
//				System.out.println("I");
//				break;
            case 5:
                System.out.println("5");
                break;
            // vẫn compile
            case 5 + 1:
                System.out.println("6");
                break;
        }

        for (char stables = 'a'; stables <= 'd'; stables++) {
            System.out.println(stables);
        }
    }
}
