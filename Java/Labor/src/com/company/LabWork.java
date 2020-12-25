package com.company;

public class LabWork {
    private double a,b,c,x;
    LabWork(double a, double b, double c, double x){
        this.a = a;
        this.b = b;
        this.c = c;
        this.x = x;
    }

    public double func1(){
        double result = Math.sqrt(x + 62.7 * Math.pow(Math.E, c * x));
        return  result / (a * Math.pow(x, 2) + 7 * x + b * Math.exp(x));
    }

    public double func2(){
        return Math.exp(Math.abs(a * Math.sin(x) + b * Math.cos(c * Math.pow(x, 2))));
    }
}
