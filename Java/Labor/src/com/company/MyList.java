package com.company;

public class MyList {
    private Node head, tail;
    private int count;

    public MyList(){
        head = null;
        count = 0;
    }

    public void Add(String info){
        Node tmp = new Node(info);
        if (count == 0){
            head = tmp;
        } else {
            tail.setNext(tmp);
        }
        tail = tmp;
        count++;
    }

    public boolean IsEmpty(){
        return count == 0;
    }

    public void Clear(){
        Node tmp;
        while (!IsEmpty()){
            tmp = head;
            head = head.getNext();
        }
    }

    public String Get(int index){
        Node node = head;
        int x = 0;
        if (!IsEmpty()){
            while ((x < index)&&(node.getNext() != null)){
                node = node.getNext();
                count++;
            }
            if (x == index){
                return node.getInfo();
            } else {
                return null;
            }
        }
        return null;
    }

}
