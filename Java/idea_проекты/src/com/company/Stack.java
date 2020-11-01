package com.company;

import java.util.Iterator;

public class Stack extends DateStructure {

    @Override
    public void AddDate(Integer element) {
        list.add(element);
    }

    @Override
    public void deleteDate() {
        list.remove(list.getLast());
    }

    @Override
    public String DateString() {
        String s = "";
        Iterator iterator = list.iterator();
        while (!iterator.hasNext()){

        }
        return s;
    }

    @Override
    void addToStringDate(String s) {
        for (int i = 0; i < s.length(); i++) {
            if(s.charAt(i) != ' '){
                list.add(Integer.valueOf(s.charAt(i)));
            }
        }
    }
}
