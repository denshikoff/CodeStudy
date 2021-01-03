package com.company;



import com.company.study.WorkSwitch;

import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);
        long number1 = scanner.nextLong();
        long number2 = scanner.nextLong();
        String symbol = scanner.next();
        System.out.println(WorkSwitch.calculator(number1, number2, symbol));
    }
}
