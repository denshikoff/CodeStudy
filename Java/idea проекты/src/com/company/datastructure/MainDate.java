package com.company.datastructure;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class MainDate {
    public static void make() throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Добавить строку");
        String str = reader.readLine();
        System.out.println("как добавить числа? 1-стек, Иное-очередь");
        int check = reader.read();
        if(check == 1) {
            DateStructure queue = new Queue();
            queue.addToStringDate(str);
            System.out.println(queue.DatesString());
        } else {
            DateStructure stack = new Stack();
            stack.addToStringDate(str);
            System.out.println(stack.DatesString());
        }
    }
}
