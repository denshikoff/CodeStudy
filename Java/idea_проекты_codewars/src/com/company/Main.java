package com.company;

import java.util.Stack;

import static com.company.study.Study.findMasString;

public class Main {

    public static void main(String[] args) {

        int a = 0; int b = 10;
        Stack stack = new Stack<>();

        for (int i = 0; i < 5; i++) {
            int x = a + (int) (Math.random()*b);
            stack.push(x);
            System.out.println(x);
        }
        System.out.println("----------------");
        WorkInStack st = new WorkInStack();
        st.invertStack(stack);

    }


}
