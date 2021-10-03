package com.company.posix.lab1;

public class Lab1 {
    public static int searchStone(String all_list_stone, String stoneMiner){
        int count = 0;
        boolean ok = false;
        for (int i = 0; i < stoneMiner.length(); i++) {
            for (int j = 0; j < all_list_stone.length(); j++) {
                if(stoneMiner.charAt(i) == all_list_stone.charAt(j) && !ok){
                    count++;
                    ok = true;
                }
            }
            ok = false;
        }
        return count;
    }
}
