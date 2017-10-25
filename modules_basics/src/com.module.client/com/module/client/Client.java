package com.module.client;
import com.module.a.Sample;

public class Client {
    public static void main(String[] args){
        Sample sample = new Sample();
        System.out.println(sample.moduleA());
    }
}