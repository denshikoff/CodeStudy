package com.company.shop;

import java.util.List;

public class Pizza {
    private Dough dough;
    private int countVegetables;
    private List<Integer> lengthPizza;
    protected String result = "";


    public Dough getDough() {
        return dough;
    }

    public void setDough(Dough dough) {
        this.dough = dough;
    }

    public int getCountVegetables() {
        return countVegetables;
    }

    public void setCountVegetables(int countVegetables) {
        this.countVegetables = countVegetables;
    }

    public List<Integer> getLengthPizza() {
        return lengthPizza;
    }

    public void setLengthPizza(List<Integer> lengthPizza) {
        this.lengthPizza = lengthPizza;
    }

    public void makeDough(){
        result += "Вид теста " + dough + " ";
    }

    public void addVegetables(){
        result += "Овощей использовано " + countVegetables + " ";
    }

    public void setLength(){
        result += "Длина пиццы " + lengthPizza + " ";
    }
}
