package com.Dragonist.Controller;

import java.util.ArrayList;
import java.util.Random;

public class Tool {
    public static ArrayList<Integer> randomX(int n, int size) {
        ArrayList<Integer> numbers = new ArrayList<>();

        Random random = new Random();
        while (n > 0) {
            int x = random.nextInt(size);
            if (numbers.contains(x)) continue;
            numbers.add(x);
            n--;
        }

        return numbers;
    }
}
