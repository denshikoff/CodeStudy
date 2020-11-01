package com.company;

import java.util.LinkedList;
import java.util.List;

public abstract class DateStructure {
    protected LinkedList<Integer> list;
    abstract void AddDate(Integer element);
    abstract void deleteDate();
    abstract String DateString();
    abstract void addToStringDate(String s);
    public void clearDate(){
        list.clear();
    }
}
