package com.company;



import com.company.study.*;

import java.io.*;
import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {
        File sampleFile = new File("sample.txt");
        String content = "Streams are easy!";
        FileWriter writer = new FileWriter(sampleFile, true);
        writer.write(content);
        writer.close();
        PrintWriter
    }
}
