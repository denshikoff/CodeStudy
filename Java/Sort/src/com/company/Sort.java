package com.company;

public class Sort {
    public static void bubbleSort(int... array){
        for (int i = array.length - 1; i > 0 ; i--) {
            for (int j = 0; j < i; j++) {
                if (array[j] > array[j + 1]) {
                    int tmp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = tmp;
                }
            }
        }
    }

    public static void selectSort(int... array){
        for (int i = 0; i < array.length-1; i++) {
            int min = i;
            for (int j = i+1; j < array.length; j++) {
                if(array[j] < array[min]){
                    min = array[j];
                }
            }
            int tmp = array[min];
            array[min] = array[i];
            array[i] = tmp;
        }
    }

    public static void insertionSort(int... array) {

        for (int i = 1; i < array.length; i++) { // i - разделяющий маркер
            int temp = array[i]; // делаем копию помеченного элемента
            int j = i;
            while (j 	> 0 && array[j - 1] >= temp) { // пока не будет найден меньший элемент
                array[j] = array[j - 1]; // сдвигаем элементы вправо
                --j;
            }
            array[j] = temp;   // вставляем отмеченный элемент, в положеное ему место
        }
    }
}
