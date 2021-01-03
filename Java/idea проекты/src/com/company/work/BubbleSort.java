package com.company.work;

public class BubbleSort {
    public int countSort(int[] array){
        int count = 0;
        for (int j = 1; j < array.length; j++) {
            for (int i = 0; i < array.length - 1; i++) {
                if(array[i]>array[i+1]){
                    int tmp = array[i];
                    array[i] = array[i+1];
                    array[i+1] = tmp;
                    count++;
                }
            }
        }
        return count;
    }
}
