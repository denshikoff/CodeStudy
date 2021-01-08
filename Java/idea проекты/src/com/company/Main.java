package com.company;



import com.company.study.WorkArray;

import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Cinema:");
        int n = 8;
        int m = 9;
        String[][] array = new String[8][9];
        array[0][0] = " ";
        for (int i = 1; i < m; i++) {
            array[0][i] = String.valueOf(i);
        }
        for (int i = 1; i < n; i++) {
            array[i][0] = String.valueOf(i);
        }

        for (int i = 1; i < n; i++) {
            for (int j = 1; j < m; j++) {
                array[i][j] = "S";
            }
        }

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                System.out.print(array[i][j] + " ");
            }
            System.out.print('\n');
        }
        //количество рядов
        System.out.println("Enter the number of rows:");
        int countRows = scanner.nextInt();

        System.out.println("Enter the number of seats in each row:");
        int countSeats = scanner.nextInt();

        System.out.println("Total income:");
        System.out.println("$" + makeCost(countRows, countSeats));

    }

    public static int makeCost(int countR, int countS) {
        int allRows = countR * countS;
        int p = countR / 2;
        if (allRows < 60){
            return allRows * 10;
        } else if (countR % 2 == 0) {
            int firstR = p * countS * 10;
            int secondR = p * countS * 8;
            return firstR + secondR;
        } else {
            int firstR = p * countS * 10;
            int secondR = (p+1) * countS * 8;
            return firstR + secondR;
        }
    }
}
