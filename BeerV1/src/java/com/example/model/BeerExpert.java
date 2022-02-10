/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joK28
 */
public class BeerExpert {
    public List getBrands(String color){
        
        List brands = new ArrayList();
        if(color.equals("amber")){
            brands.add("Jack Amber");
            brands.add("Red Moose");
        }
        else{
            brands.add("Jail Pale Ale");
            brands.add("Gout Stout");
        }
        return(brands);
    }
}
