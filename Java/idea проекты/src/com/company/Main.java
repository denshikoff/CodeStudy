package com.company;



import com.company.study.WorkArray;

import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        int c = scanner.nextInt();
        int d = scanner.nextInt();
        if ((d == 0) || ((b + c) == 0)) {
            System.out.println("Division by zero!");
        } else {
            System.out.println(a / ((b + c) / d));
        }
    }
}
