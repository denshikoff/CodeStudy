package com.company.datastructure;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;

public interface DateStructure {
    List<Integer> list = new ArrayList<>();

    void AddDate(Integer element);
    Integer getDate();

    default String DatesString() {
        String str = "";
        while (!list.isEmpty()){
            str += str + getDate() + " ";
        }
        return str;

    }

    default void addToStringDate(String s) {
        Pattern pattern = Pattern.compile("[ ,.!?]");
        String[] words = pattern.split(s);
        for (String word : words) {
            AddDate(Integer.valueOf(word));
        }
    }

    default void clearDate(){
        list.clear();
    }
}
