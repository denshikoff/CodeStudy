package com.company;

import java.util.ArrayList;

public class Cell {
    ArrayList<Cell> near; //расточительно
    Status status;

    public Cell() {
        status = Status.NONE;
    }

    void  addNear(Cell cell){
        near.add(cell);
    }

    void step1() {
        int around = countNearCells();
        status = status.step1(around);
    }

    private int countNearCells() {
        int count = 0;
        for (Cell cell : near) {

            if (cell.status.isCell()) {
                count++;
            }
        }
        return count;
    }

    void step2(){
            status = status.step2();
        }
}
