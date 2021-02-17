package com.company.study;

public class NumberGenerator extends BaseNumberGenerator {
    public NumberGenerator(int base) {
        super(base);
    }

    @Override
    public int generate() {
        return super.generate() + getNumber();
    }

    protected int getNumber() {
        return this.base - 7;
    }
}
