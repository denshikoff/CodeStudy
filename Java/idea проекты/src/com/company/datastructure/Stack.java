package com.company.datastructure;

import com.company.datastructure.DateStructure;

import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Stack implements DateStructure {

    @Override
    public void AddDate(Integer element) {
        list.addLast(element);
    }

    @Override
    public Integer getDate() {
        return list.removeLast();
    }
}
