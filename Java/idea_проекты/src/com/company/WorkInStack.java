package com.company;

import java.util.Stack;
//инвертировать стек
public class WorkInStack {
    void invertStack(Stack stack){
        while (!stack.empty()){
            System.out.println(stack.pop());
        }
    }
}
