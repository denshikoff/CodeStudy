package com.company;
class Alpha {
    private int code;
    private String name;
    //работаем лишь с методом класса, не трогая переменную
    public void set(int code, String name) {
        this.code = code; //приватной переменной присваивается значение извне
        this.name = name;

    }
    public void show(){
        System.out.println("Поле code " + code);
    }

    public void soutname(){
        System.out.println("Ваше имя "+ name);
    }
    //конструктор вызывается в момент создания объекта и сразу испольняется
    Alpha(int code, String name) {
        set(code,name); //вызов метода с параметром
    }
}
//подкласс
class Bravo extends Alpha {
    Bravo(int code, String name){
        //вызов констуктура суперкласса
        super(code,name);
    }
}
