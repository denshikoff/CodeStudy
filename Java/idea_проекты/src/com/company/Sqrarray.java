package com.company;

public class Sqrarray {
    public static int squareSum(int[] n) {
        int x = 0;
        for (int i = 0; i < n.length; i++) {
            x += Math.pow(n[i],2);
        }
        return x;
    }
}
