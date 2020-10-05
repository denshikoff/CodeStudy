package com.company;

import java.util.Stack;
//инвертировать стек
public class WorkInStack {
    void invertStack(Stack stack){
        while (!stack.empty()){
            System.out.println(stack.pop());
        }
    }
    Stack pushRandom(Stack stack){
        int a=0;
        int b=10;
        for (int i = 0; i < 5; i++) {
            int x = a + (int) (Math.random()*b);
            stack.push(x);
            System.out.println(x);
        }
        return stack;
    }

}
