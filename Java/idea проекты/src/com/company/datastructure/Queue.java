package com.company.datastructure;

import java.util.regex.Pattern;

public class Queue extends DateStructure{
    @Override
    void AddDate(Integer element) {
        list.addFirst(element);
    }

    @Override
    Integer getDate() {
        return list.getFirst();
    }

    @Override
    void DeleteDate() {
        list.removeFirst();
    }

    @Override
    String DatetoString() {
        return list.toString();
    }

    @Override
    void addToStringDate(String s) {
        Pattern pattern = Pattern.compile("[ ,.!?]");
        String[] words = pattern.split(s);
        for (String word :
                words) {
            list.addFirst(Integer.valueOf(word));
        }
    }
}
