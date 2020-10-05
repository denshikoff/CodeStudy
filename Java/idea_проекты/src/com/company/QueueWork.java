package com.company;

import java.util.Queue;

public class QueueWork {
    Queue pushRandom(Queue queue){
        int a=0;
        int b=10;
        for (int i = 0; i < 5; i++) {
            int x = a + (int) (Math.random()*b);
            queue.add(x);
            System.out.println(x);
        }
        return queue;
    }
}
