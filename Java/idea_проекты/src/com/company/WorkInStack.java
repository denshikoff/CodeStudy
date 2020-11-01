package com.company;

import java.util.Stack;
import java.util.concurrent.ThreadLocalRandom;

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
            int x = ThreadLocalRandom.current().nextInt(0, 10);;
            stack.push(x);
            System.out.println(x);
        }
        return stack;
    }

}
