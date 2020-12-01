package com.company.datastructure;

import com.company.datastructure.DateStructure;

import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Stack extends DateStructure {

    @Override
    public void AddDate(Integer element) {
        list.addLast(element);
    }

    @Override
    public Integer getDate() {
        return list.getLast();
    }

    @Override
    void DeleteDate() {
        list.removeLast();
    }

    @Override
    public String DatetoString() {
        String str = "";
        for (int i = list.size()-1; i>=0; i--){
            str += str + list.get(i) + " ";
        }
        return str;
    }

    @Override
    void addToStringDate(String s) {
        Pattern pattern = Pattern.compile("[ ,.!?]");
        String[] words = pattern.split(s);
        for (String word :
                words) {
            list.addLast(Integer.valueOf(word));
        }
    }
}
