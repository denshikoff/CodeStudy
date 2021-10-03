package com.company.buffer;

import com.company.structureDate;

import java.util.Iterator;

public class CircleBuffer implements structureDate {
    private  int readSequence; //позиция откуда можем вынуть
    private  int writeSequence; //позиция куда можем добавить
    private int capacity;
    private int size;
    private int[] buffer;


    public CircleBuffer(int capacity) {
        readSequence = 0;
        writeSequence = -1;
        this.capacity = capacity;
        buffer = new int[capacity];
    }

    //возращает и удаляет
    @Override
    public Object poll() {
        if(!isEmpty()){
            int value = buffer[readSequence % capacity];
            readSequence++;
            return value;
        }
        return null;
    }

    //возращает но не удаляет
    @Override
    public Object peek() {
        if(!isEmpty()){
            int value = buffer[readSequence % capacity];
            return value;
        }
        return null;
    }

    @Override
    public boolean add(Object item) {
        if(!isFull()){
            int nextWriteSeq = writeSequence + 1; buffer[nextWriteSeq % capacity] = (int) item;
            writeSequence++;
            return true;
        }
        return false;
    }

    private boolean isFull() {
        return getSize() == capacity;
    }

    private boolean isEmpty(){
        return writeSequence < readSequence;
    }

    public void showEl(){

    }



    @Override
    public int getSize() {
        return writeSequence - readSequence + 1;
    }

    @Override
    public Iterator iterator() {
        return null;
    }
}
