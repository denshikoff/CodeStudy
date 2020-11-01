package com.company;

import javax.swing.*;
import java.awt.*;

public class Box extends JPanel {
    Cell cell;
    public Box(int x, int y){
        super();
        cell =  new Cell();
        setBounds(x * Config.SIZE, y * Config.SIZE, Config.SIZE, Config.SIZE);
        setBackground(Config.getColor(Status.NONE));
    }

    public void setColor(){
        setBackground(Config.getColor(cell.status));
    }
}
