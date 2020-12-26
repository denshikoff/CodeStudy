package com.company.patterns.adapter;

import java.util.List;

public class Adapter implements ImplementsPrinter {
    private Printer printer = new Printer();
    @Override
    public void print(List<String> list) {
        for (String text : list) {
            printer.print(text);
        }
    }
}
