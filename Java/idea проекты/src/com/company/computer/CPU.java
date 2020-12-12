package com.company.computer;

public class CPU extends Detail {
    private TypeProc typeProc;
    private int rate;

    public CPU(int id, int price, TypeProc typeProc, int rate) {
        super(id, price);
        this.typeProc = typeProc;
        this.rate = rate;
    }

    public TypeProc getTypeProc() {
        return typeProc;
    }

    public void setTypeProc(TypeProc typeProc) {
        this.typeProc = typeProc;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }
}
