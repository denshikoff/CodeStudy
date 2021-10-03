package com.company.posix;

import java.io.File;
import java.lang.reflect.Array;
import java.util.Arrays;

public class FileWork {

    public void choiceCommand(String str){
        int command = getCommand(str);
        switch (command){
            case 0: makeLS();
                break;
            case 1: makeLS_R();
                break;
            case 2: makeMKDIR(str);
                break;
            case 3: makeECHO(str);
                break;
            case 4: makeCAT(str);
                break;
            case -1:
                System.out.println("Error! Команда неизвестна!");
        }
    }

    private void makeCAT(String str) {

    }

    private void makeECHO(String str) {

    }

    private void makeMKDIR(String str) {

    }

    private void makeLS_R() {
        File dir = new File(System.getProperty("user.dir"));
        File[] files = dir.listFiles();
        Arrays.sort(files);
        for (File item : files) {
            if (item.isDirectory()) {
                System.out.println(item.getName() + "  каталог");
            } else {
                System.out.println(item.getName() + " файл");
            }
        }
    }

    private void makeLS() {
        File dir = new File(System.getProperty("user.dir"));
        if (dir.isDirectory()) {
            for (String item : dir.list()) {
                System.out.println(item);
            }
        }
    }

    private int getCommand(String str) {
      if("ls".equals(str)){
          return 0;
      }
      if("ls -r".equals(str)){
            return 1;
      }
      if("mkdir ".equals(str.substring(0, 6))){
          return 2;
      }
      if("echo ".equals(str.substring(0, 5))){
          return 3;
      }
      if("cat ".equals(str.substring(0, 4))){
          return 4;
      }
      return -1;
    }
}
