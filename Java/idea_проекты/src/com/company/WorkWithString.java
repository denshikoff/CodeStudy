package com.company;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class WorkWithString {

    public int countStr(String s){
        int k = 0;
        if("".equals(s)){
            k++;
        }
        return k;
    }

    public int countWord(String s){
        int count = 0;
        s.trim();
        for (int i = 0; i < s.length(); i++) {
            if(s.charAt(i) == ' '){
                count++;
            }
        }
        return count;
    }

    public void countMaxWord() throws IOException {
        WorkInFile file = new WorkInFile();
        List<String> list;
        WorkWithString string = new WorkWithString();
        int countMax = 0;

        list = file.openFileForRead();
        for (String s : list) {
            if(countMax < string.countWord(s)+1){
                countMax = string.countWord(s)+1;
            }
        }
        System.out.println("Наибольшее количество слов " + countMax);
    }

    public Path searchReadWord() throws IOException {
        var reader = new BufferedReader(new InputStreamReader(System.in));
        WorkInFile file = new WorkInFile();
        List<String> list = new ArrayList<>();
        Path newFile = file.createFile();
        System.out.println("Read word");
        String word = reader.readLine();
        list = file.openFileForRead();

        for (int i = 0; i < list.size(); i++) {
            if(!list.get(i).contains(word)){
                list.remove(i);
            }
        }
        Files.write(newFile,list);
        return newFile;
    }
}
