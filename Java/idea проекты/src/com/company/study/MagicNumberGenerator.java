package com.company.study;

public class MagicNumberGenerator extends NumberGenerator {
    public MagicNumberGenerator(int base) {
        super(base);
    }

    @Override
    protected int getNumber() {
        return this.base + 7;
    }
}
