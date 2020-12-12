package com.company.book;

public class BinarySearch {

    public static int binarySearch(int[] list, int item) {
        if (isListEmpty(list)) {
            return -1;
        }

        int low = 0; //нижняя граница
        int high = list.length - 1; //верхняя граница

        while (low <= high) {
            int mid = (low + high) / 2; //каждый средний элемент
            int guess = list[mid];

            if (guess == item) {
                return mid;
            } else if (guess > item) {
                high = mid - 1;
            } else {
                low = mid + 1;
            }
        }

        return -1;
    }

    public static boolean isListEmpty(int[] myList) {
        int listSize = myList.length;
        if (listSize == 0) {
            return true;
        }
        return false;
    }
}
