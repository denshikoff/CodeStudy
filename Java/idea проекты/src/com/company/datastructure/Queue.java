package com.company.datastructure;

import java.util.regex.Pattern;

public class Queue implements DateStructure{
    @Override
    public void AddDate(Integer element) {
        list.addFirst(element);


    }

    @Override
    public Integer getDate() {
        return list.removeFirst();
    }

}
