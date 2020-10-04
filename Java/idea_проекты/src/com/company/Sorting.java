package com.company;

import java.util.Arrays;
/*Given a two-dimensional array of integers,
return the flattened version of the array with
all the integers in the sorted (ascending) order.*/
public class Sorting {
    public static int[] flattenAndSort(int[][] array) {
        int len = 0;
        for (int l = 0; l < array.length; l++) {
            len += array[l].length;
        }
        int[] myArray = new int[len];
        int count = 0;
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array.length; j++) {
                myArray[count] = array[i][j];
                count++;
            }
        }
        Arrays.sort(myArray);
        return myArray;
    }
}
