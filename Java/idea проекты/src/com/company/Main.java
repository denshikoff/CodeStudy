package com.company;



import com.company.computer.CPU;
import com.company.computer.Detail;
import com.company.computer.TypeProc;
import com.company.patterns.Singleton;
import com.company.patterns.factory.Bmw;
import com.company.patterns.factory.Car;
import com.company.patterns.factory.InitObject;
import com.company.patterns.factory.typeAuto;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;


public class Main {

    public static void main(String[] args) throws IOException {
        Car car =  InitObject.getInstance().getCar(typeAuto.bmw);
    }
}
