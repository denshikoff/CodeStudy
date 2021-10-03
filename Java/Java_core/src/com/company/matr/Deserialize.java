package com.company.matr;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import static java.nio.charset.StandardCharsets.UTF_8;

//из файла в матрицу
public class Deserialize {
    String filename;


    public Deserialize() throws IOException {
        System.out.println("Напишите путь к файлу");
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        filename = reader.readLine();
    }

    public Matr getMatr() throws FileNotFoundException {
        Scanner fileScanner = new Scanner(new FileReader(filename));
        fileScanner.useLocale(Locale.US);
        int[] size = new int[2];
        int k = 0;
        size[0] = fileScanner.nextInt();
        size[1] = fileScanner.nextInt();
        float[][] mt = new float[size[0]][size[1]];
        for (int i = 0; i < mt.length; i++) {
            for (int j = 0; j < mt[i].length; j++) {
                mt[i][j] = fileScanner.nextFloat();
            }
        }
        fileScanner.close();
        return new Matr(size[0],size[1], mt);
    }
}


