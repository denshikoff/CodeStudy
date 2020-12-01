package com.company.work;

import java.util.Queue;
import java.util.concurrent.ThreadLocalRandom;

public class QueueWork {
    static Queue pushRandom(Queue queue){
        int a=0;
        int b=10;
        for (int i = 0; i < 5; i++) {
            int x =  ThreadLocalRandom.current().nextInt(0, 100); //это эффективный метод рандом!!!
            queue.add(x);
            System.out.println(x);
        }
        return queue;
    }
}
