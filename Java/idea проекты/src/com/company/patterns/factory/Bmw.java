package com.company.patterns.factory;

public class Bmw implements Car {
    @Override
    public void drive() {
        System.out.println("Bmw drive 150 km");
    }

    @Override
    public void stop() {
        System.out.println("Bmw stop 2 sec");
    }
}
