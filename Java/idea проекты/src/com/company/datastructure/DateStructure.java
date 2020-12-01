package com.company.datastructure;

import java.util.LinkedList;
import java.util.List;

public abstract class DateStructure {
    protected LinkedList<Integer> list;
    abstract void AddDate(Integer element);
    abstract Integer getDate();
    abstract void DeleteDate();
    abstract String DatetoString();
    abstract void addToStringDate(String s);
    public void clearDate(){
        list.clear();
    }
}
