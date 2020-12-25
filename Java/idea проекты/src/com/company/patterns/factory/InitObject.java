package com.company.patterns.factory;

public class InitObject {
    private static InitObject instance;
    private InitObject() {

    }

    public static InitObject getInstance() {
        if(instance == null){
            instance = new InitObject();
        }
        return instance;
    }

    public Car getCar(typeAuto typeAuto){
        Car car = null;
        switch (typeAuto){
            case bmw:car = new Bmw();
            break;
            case lada:car = new Lada();
            break;
            case shkoda:car = new Shoda();
            break;
        }
        return car;
    }
}
