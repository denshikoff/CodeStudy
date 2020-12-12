package com.company.shop;

public class PizzaShop {
    private final FactoryPizza factoryPizza;

    public PizzaShop(FactoryPizza factoryPizza) {
        this.factoryPizza = factoryPizza;
    }
    public String orderPizza(VariablePizza type){
        Pizza pizza = factoryPizza.createPizza(type);
    }
}
