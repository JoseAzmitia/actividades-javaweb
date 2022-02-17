/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.azmitia.model;

/**
 *
 * @author joK28
 */
public class Game {
    
    String[] jugada = {"Piedra", "Papel", "Tijera"};
    int jugadaCliente, jugadaServidor;
    int victoriaCliente = 1, victoriaServidor = 2, empate = 3;
    String ganador = "";    

    public Game() {
    }
    
    public int comparar(int jugadaCliente, int jugadaServidor){
        int resultado = 0;
        switch (jugadaCliente)
		{
			case 1:
				System.out.println("Piedra");
				switch (jugadaServidor)
				{
					case 1: resultado = empate; break;
					case 2: resultado = victoriaServidor; break;
					case 3: resultado = victoriaCliente; break;
				}
				break;

			case 2:
				System.out.println("Papel");
				switch (jugadaServidor)
				{
					case 1: resultado = victoriaCliente; break;
					case 2: resultado = empate; break;
					case 3: resultado = victoriaServidor; break;
				}
				break;

			case 3:
				System.out.println("Tijera");
				switch (jugadaServidor)
				{
					case 1: resultado = victoriaServidor; break;
					case 2: resultado = victoriaCliente; break;
					case 3: resultado = empate; break;
				}
				break;
		}
        return resultado;
    }
    
    public String nombreJugada(int j){
        String nombre = jugada[j - 1];
        return nombre;
    }
    
    public String[] getJugada() {
        return jugada;
    }

    public void setJugada(String[] jugada) {
        this.jugada = jugada;
    }

    public int getJugadaCliente() {
        return jugadaCliente;
    }

    public void setJugadaCliente(int jugadaCliente) {
        this.jugadaCliente = jugadaCliente;
    }

    public int getJugadaServidor() {
        return jugadaServidor;
    }

    public void setJugadaServidor(int jugadaServidor) {
        this.jugadaServidor = jugadaServidor;
    }

    public String getGanador() {
        return ganador;
    }

    public void setGanador(String ganador) {
        this.ganador = ganador;
    }
    
    
}
