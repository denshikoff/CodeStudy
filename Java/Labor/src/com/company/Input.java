package com.company;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Input {
    public static double readVar() throws IOException {
        System.out.println("Read variable");
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        return reader.read();
    }
}
