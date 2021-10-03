package com.company;

import com.company.buffer.CircleBuffer;
import com.company.matr.Deserialize;
import com.company.matr.Matr;
import com.company.matr.Serialize;
import com.company.posix.FileWork;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);
        CircleBuffer circleBuffer =new CircleBuffer(5);
        String check = "";
        int i = 0;
        while(i < 5){
            System.out.println("Введите элемент");

            circleBuffer.add(scanner.nextInt());
            //System.out.println("Нажмите ентер чтобы продолжить иначе .");
           // check = scanner.next();
            i++;
        }

        System.out.println(circleBuffer.poll());
        System.out.println(circleBuffer.poll());
        circleBuffer.add(scanner.nextInt());

    }
}
