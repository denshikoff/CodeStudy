package com.company.matr;

import java.io.*;

public class Serialize {
    String filename;

    public Serialize() throws IOException {
        System.out.println("Напишите путь к файлу");
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        filename = reader.readLine();
    }

    public void fileWriteMatr(Matr matr){
        try(FileWriter fileWriter = new FileWriter(filename, false)){
           fileWriter.write(matr.toString());

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("Матрица успешна умножена");
    }
}
