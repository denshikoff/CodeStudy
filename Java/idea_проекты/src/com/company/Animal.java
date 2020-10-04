package com.company;

    public class Animal {

        private String name;
        private int age;
        private int weight;

          public Animal(String name, int age, int weight) {
            this.name = name;
            this.age = age;
            this.weight = weight;
        }

        public  Animal(int... count){

        }

        public void AnimalMusic(String show){
            System.out.println(show);
        }
        public int getAge() {
            return age;
        }

        public void setAge(int age) {
            if(age > 0) {
                this.age = age;
            } else {
                System.out.println("Error. This Age is not right");
            }
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getWeight() {
            return weight;
        }

        public void setWeight(int weight) {
            this.weight = weight;
        }
    }
