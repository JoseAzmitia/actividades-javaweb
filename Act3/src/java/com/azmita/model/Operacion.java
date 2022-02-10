/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.azmita.model;

/**
 *
 * @author joK28
 */
public class Operacion {
    
    private double n1, n2, suma, resta, multiplicacion, division;

    public Operacion(String n1, String n2) {
        this.setN1(Double.parseDouble(n1));
        this.setN2(Double.parseDouble(n2));
    }
    
    public void calcularSuma(){
        double s = this.getN1() + this.getN2();
        this.setSuma(s);
    }
    
    public void calcularResta(){
        double r = this.getN1() - this.getN2();
        this.setResta(r);
    }
    
    public void calcularMultiplicacion(){
        double m = this.getN1() * this.getN2();
        this.setMultiplicacion(m);
    }
    
    public void calcularDivision(){
        double d = this.getN1() / this.getN2();
        this.setDivision(d);
    }
        
    public double getN1() {
        return n1;
    }

    public void setN1(double n1) {
        this.n1 = n1;
    }

    public double getN2() {
        return n2;
    }

    public void setN2(double n2) {
        this.n2 = n2;
    }

    public double getSuma() {
        return suma;
    }

    public void setSuma(double suma) {
        this.suma = suma;
    }

    public double getResta() {
        return resta;
    }

    public void setResta(double resta) {
        this.resta = resta;
    }

    public double getMultiplicacion() {
        return multiplicacion;
    }

    public void setMultiplicacion(double multiplicacion) {
        this.multiplicacion = multiplicacion;
    }

    public double getDivision() {
        return division;
    }

    public void setDivision(double division) {
        this.division = division;
    }

    
    
    
}
