package com.company.study;

public class BaseNumberGenerator {
    protected int base;

    public BaseNumberGenerator(int base) {
        this.base = base;
    }

    public int generate() {
        return base + 11;
    }
}
