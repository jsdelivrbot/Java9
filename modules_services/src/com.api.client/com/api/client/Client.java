package com.api.client;
import java.util.*;
import com.api.MyService;

public class Client {
    public static void main(String[] args){
        System.out.println("Checking Servces");
        Iterable<MyService> services = ServiceLoader.load(MyService.class);
        for(MyService s : services){
            System.out.println("ServiceImpl: " +  s.doWork());
        }
        
    }
}