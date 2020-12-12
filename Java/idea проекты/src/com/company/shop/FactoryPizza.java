package com.company.shop;

public class FactoryPizza {

    public Pizza createPizza(VariablePizza type){
        Pizza pizza = null;
        switch (type){
            case Europa:pizza = new Europa();break;
            case Peperoni:pizza = new Peperoni();break;
        }
        return pizza;
    }
}
