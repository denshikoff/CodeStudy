package com.company;



import com.company.computer.CPU;
import com.company.computer.Detail;
import com.company.computer.TypeProc;
import com.company.datastructure.DateStructure;
import com.company.datastructure.MainDate;
import com.company.datastructure.Queue;
import com.company.datastructure.Stack;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class Main {

    public static void main(String[] args) throws IOException {
        List<Detail> list = new ArrayList<>();
        Detail q = new CPU(0, 2400, TypeProc.INTEL, 230);
        MainDate.make();
    }
}
