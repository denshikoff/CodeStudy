package com.company.study;

import java.math.BigInteger;

public class WorkSwitch {
    static String choose(int num) {
        switch (num){
            case 1: return "You have chosen a square";
            case 2: return "You have chosen a circle";
            case 3: return "You have chosen a triangle";
            case 4: return "You have chosen a rhombus";
            default: return "There is no such shape!";
        }
    }

    public static String calculator(long firstNum, long secondNum, String symbol) {
        if ((secondNum == 0) && ("/".equals(symbol))) {
            return "Division by 0!";
        }

        switch (symbol){
            case "+":return String.valueOf(firstNum + secondNum);
            case "-":return String.valueOf(firstNum - secondNum);
            case "*":return String.valueOf(firstNum * secondNum);
            case "/":return String.valueOf(firstNum / secondNum);
            default: return "Unknown operator";
        }
    }
}
