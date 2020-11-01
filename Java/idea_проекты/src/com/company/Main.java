package com.company;



import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.util.*;

import static java.util.Collections.emptyList;


public class Main {

    public static void main(String[] args) throws IOException {
        Stack stack = new Stack();
        for (int i = 0; i < 10; i++) {
            stack.AddDate(i);
        }
        System.out.println(stack.DateString());
    }
}
