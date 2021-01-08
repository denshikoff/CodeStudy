package com.company.study;

public class WorkArray {
    public static int sumHighN(int N, int... array) {
        int s = 0;
        for (int n : array) {
            if (n > N) {
                s += n;
            }
        }
        return s;
    }

    public static boolean checkTogether(int n, int m, int... a){
        for (int i = 0; i < a.length-1; i++) {
            if ((a[i] == n) && (a[i+1] == m)){
                return true;
            }
        }
        return false;
    }
    
    public static boolean checkSymmetryMultiArray(int[][]array){

        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[i].length; j++) {
                if(array[i][j] != array[j][i]){
                    return false;
                }
            }
        }
        return true;
    }

    public static String findIndexMax(int[][]array){
        int max = array[0][0];
        int i_max = 0;
        int j_max = 0;
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[i].length; j++) {
                if (array[i][j] > max) {
                    max = array[i][j];
                    i_max = i;
                    j_max = j;
                }
            }
        }
        return i_max + " " + j_max;
    }

    public static boolean checkPalindrome(char... chars){
        for (int i = 0; i < chars.length; i++) {
            if (chars[i] != chars[chars.length-1-i]) {
                return false;
            }
        }
        return true;
    }

}
