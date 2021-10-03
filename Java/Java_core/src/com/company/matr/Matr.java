package com.company.matr;

import java.math.RoundingMode;
import java.text.DecimalFormat;

public class Matr {
    public int getRowsCount() {
        return rowsCount;
    }

    public int getColumnCount() {
        return columnCount;
    }

    private int rowsCount, columnCount;
    private float[][] matr;

    public Matr(int rowsCount, int columnCount, float[][] matr) {
        this.rowsCount = rowsCount;
        this.columnCount = columnCount;
        this.matr = matr;
    }
    public void setMatr(float[][] matr){
        this.matr = matr;
    }

    public Matr multiplicationMatr(Matr matr2){
        if(this.matr[0].length == matr2.matr.length) {
            Matr newMatr = new Matr(this.rowsCount, matr2.columnCount, new float[this.rowsCount][matr2.columnCount]);
            for (int i = 0; i < this.rowsCount; i++) {
                for (int j = 0; j < matr2.columnCount; j++) {
                    newMatr.matr[i][j] = sumCell(this, matr2, i, j);
                }
            }
            return newMatr;
        }
        System.out.println("Матрицы нельзя умножить!");
        return null;
    }
    //метод создания одного элемента матрицы
    private float sumCell(Matr matr1, Matr matr2, int row, int column){
        DecimalFormat df = new DecimalFormat("#.##");
        df.setRoundingMode(RoundingMode.DOWN);
        float sum = 0;
        float n = 0;
        for (int i = 0; i < matr1.columnCount; i++) {
            n = matr1.matr[row][i] * matr2.matr[i][column];
            sum += Math.round(n*100.0) / 100.0;
        }
        return sum;
    }

    //вывод матрицы в косоль
    public void showMatr(){
        for (int i = 0; i < matr.length; i++) {
            for (int j = 0; j < matr[i].length; j++) {
                System.out.print(matr[i][j] + " ");
            }
            System.out.println("");
        }
    }

    //toString для матрицы
    public String toString(){
        StringBuilder stringBuilder =  new StringBuilder();
        stringBuilder.append("<кол-во строк " + matr.length + " кол-во столбцов " + matr[0].length + "> " + '\n');
        for (int i = 0; i < matr.length; i++) {
            for (int j = 0; j < matr[i].length; j++) {
                stringBuilder.append(matr[i][j] + " ");
            }
            stringBuilder.append("\n");
        }
        return stringBuilder.toString();
    }
}
