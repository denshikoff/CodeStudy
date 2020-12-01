package com.company.work;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.*;
import java.util.ArrayList;
import java.util.List;

import static java.nio.file.Files.readAllLines;

public class WorkInFile {


    public String readFileName() throws IOException {
        var readerName = new BufferedReader(new InputStreamReader(System.in));
        return readerName.readLine();
    }


    public Path createFile() throws IOException {
        System.out.println("Create file");
        String s = readFileName();
        Files.newBufferedWriter(Path.of("src/com/company/file" + s));
        return Path.of("src/com/company/file/" + s);
    }

    public List openFileForRead() throws IOException {
        List<Byte> list = new ArrayList<>();
        System.out.println("Read name file");
        String str = readFileName();
        var readerFile = Files.newBufferedReader(Paths.get(str));
        System.out.println("Text or byte? Read 1 or 2");
        if(readFileName() == "1"){
            return readAllLines(Path.of(str));
        } else {
            byte[] bytes = Files.readAllBytes(Path.of(str));
            for (int i = 0; i < bytes.length; i++) {
                list.add(i,bytes[i]);
            }
            return list;
        }
    }
}