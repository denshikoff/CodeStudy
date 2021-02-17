package com.company.study;

public class Glock {
    protected int hours = 12;
    public int minutes = 0;

     protected void next() {
        if (minutes == 59) {
            minutes = 0;
            if ((hours == 12)) {
                hours = 1;
            } else {
                hours++;
            }
        } else {
            minutes++;
        }
    }
}
