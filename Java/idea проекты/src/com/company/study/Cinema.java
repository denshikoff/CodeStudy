package com.company.study;

import java.util.Scanner;

public class Cinema {
    public Cinema(){
        Scanner scanner = new Scanner(System.in);

        //количество рядов
        System.out.println("Enter the number of rows:");
        int countRows = scanner.nextInt();

        //количество мест
        System.out.println("Enter the number of seats in each row:");
        int countSeats = scanner.nextInt();
        countSeats++;
        countRows++;
        String[][] array = new String[countRows][countSeats];


        for (int i = 0; i < countSeats; i++) {
            array[0][i] = String.valueOf(i);
        }

        for (int i = 0; i < countRows; i++) {
            array[i][0] = String.valueOf(i);
        }



        for (int i = 1; i < countRows; i++) {
            for (int j = 1; j < countSeats; j++) {
                array[i][j] = "S";
            }
        }

        array[0][0] = " ";

        System.out.println("Cinema:");
        for (int i = 0; i < countRows; i++) {
            for (int j = 0; j < countSeats; j++) {
                System.out.print(array[i][j] + " ");
            }
            System.out.print('\n');
        }

        System.out.println("Enter a row number:");
        int row = scanner.nextInt();
        System.out.println("Enter a seat number in that row:");
        int seat = scanner.nextInt();

        array[row][seat] = "B";
        System.out.println("Ticket price: $" + makeCost(countRows, countSeats, row));
        System.out.println("Cinema:");
        for (int i = 0; i < countRows; i++) {
            for (int j = 0; j < countSeats; j++) {
                System.out.print(array[i][j]+ " ");
            }
            System.out.println();
        }
    }

    public static int makeCost(int countR, int countS, int r) {
        countR--;
        countS--;
        var allRows = countR * countS;
        var p = countR / 2;
        if (allRows < 60){
            return 10;
        } else if (countR % 2 == 0){
            return (r > p) ? 8:10;
        } else {
            return (r >= (p+1)) ? 8:10;
        }
    }
}
