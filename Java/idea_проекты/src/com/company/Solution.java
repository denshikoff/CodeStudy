package com.company;

import java.util.Arrays;

public class Solution
{
    public static int[] twoSum(int[] numbers, int target)
    {
        Arrays.sort(numbers);
        int j = 0;
        for (int i = 0; i < numbers.length; i++) {
            j = Arrays.binarySearch(numbers, i, numbers.length, target-numbers[i]);
            if (j > -1) {
                return new int[] {i, j};
            }
        }
        return null;
    }
}