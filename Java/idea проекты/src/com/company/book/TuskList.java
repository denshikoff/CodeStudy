package com.company.book;

import java.util.LinkedList;
import java.util.Scanner;
/* многочлен ax^2+bx+c с вещественными коэффициентами
  можно представить в виде списка, причем если а = 0 то звено в список не добавляется
  Написать функцию, которая вычисляет значение многочлена в точке x */
public class TuskList {

    static void addEl(LinkedList list, int n) {
        while (n > 0) {
            System.out.println("Read number a");
            Scanner in = new Scanner(System.in);
            double a = in.nextDouble();
            if (a != 0) {
                list.add(a);
            }
            n--;
        }
    }
    //метод вычисления
    static double make(LinkedList<Double> list){
        Scanner in = new Scanner(System.in);
        System.out.println("Read count numbers");
        int n = in.nextInt();
        double sum = 0;

        TuskList.addEl(list,n);
        System.out.println(list);

        System.out.println("Read x");
        double x = in.nextDouble();

        //проходим по всем элементам и суммируем их
        for (Double sumItem : list) {
            sum += sumItem * Math.pow(x, n);
            n--;
        }
        return sum;
    }
}
