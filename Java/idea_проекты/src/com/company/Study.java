package com.company;

public class Study {
    public static int addOne(int x){
        // System.out.println(x);
        x++;
        return x;
    }

    public static void addTwo(int x){
        System.out.println(x);
        System.out.println(addOne(x));
    }

    public static void writeWords(int... mark){
        int s = 0;
        for (int i = 0; i < mark.length; i++) {
            s += mark[i];
        }
        System.out.println(s / mark.length);
    }

    public static void  findMasString(String... word){
        int max = word[0].length();
        String w = "";
        for (int i = 1; i < word.length; i++){
            if(word[i].length() > max){
                max = word[i].length();
                w = word[i];
            }
        }
        System.out.println(w);
    }
}
