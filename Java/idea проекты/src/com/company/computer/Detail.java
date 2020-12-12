package com.company.computer;

public abstract class Detail {
    private static int id;
    private int price;

    public static int getId() {
        return id;
    }

    public static void setId(int id) {
        Detail.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    Detail(int id, int price){
        this.price = price;
        id++;
    }
}
