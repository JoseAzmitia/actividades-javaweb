/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.azmitia.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.azmitia.model.*;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author joK28
 */
@WebServlet(name = "GameController", urlPatterns = {"/GameController"})
public class GameController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GameController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GameController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int jCliente = Integer.parseInt(request.getParameter("radio"));
        int jServidor = (int)(Math.random()*3+1);
        int resultado, vClientes, vServidor, empates, numJuegos;
        
        ServletContext ctx = getServletContext();
        String contador = ctx.getInitParameter("contador");
        
        if (getServletContext().getAttribute("numJuegos") == null) {
            numJuegos = 1;
            getServletContext().setAttribute("numJuegos", numJuegos);
        }
        if ((int) getServletContext().getAttribute("numJuegos") > Integer.parseInt(contador)) {
            getServletContext().removeAttribute("numJuegos");
            getServletContext().removeAttribute("victoriasCliente");
            getServletContext().removeAttribute("victoriasServidor");
            getServletContext().removeAttribute("empates");
            response.sendRedirect("index.html");
        } else {
            numJuegos = (int) getServletContext().getAttribute("numJuegos");
            getServletContext().setAttribute("numJuegos", numJuegos + 1);

        Game partida = new Game();
        resultado = partida.comparar(jCliente, jServidor);
        switch (resultado) {
            case 1: 
                getServletContext().setAttribute("resultadoActual", "Cliente");
                if (getServletContext().getAttribute("victoriasCliente") == null){
                vClientes = 0;
                getServletContext().setAttribute("victoriasCliente", vClientes + 1); 
                }else{
                vClientes = (int) getServletContext().getAttribute("victoriasCliente");
                getServletContext().setAttribute("victoriasCliente", vClientes + 1); 
                }
                break;
            case 2:
                getServletContext().setAttribute("resultadoActual", "Servidor");
                if (getServletContext().getAttribute("victoriasServidor") == null){
                vServidor = 0;
                getServletContext().setAttribute("victoriasServidor", vServidor + 1); 
                }else{
                vServidor = (int) getServletContext().getAttribute("victoriasServidor");
                getServletContext().setAttribute("victoriasServidor", vServidor + 1); 
                }
                break;
            default:
                getServletContext().setAttribute("resultadoActual", "Empate");
                if (getServletContext().getAttribute("empates") == null){
                empates = 0;
                getServletContext().setAttribute("empates", empates + 1); 
                }else{
                empates = (int) getServletContext().getAttribute("empates");
                getServletContext().setAttribute("empates", empates + 1); 
                }
                break;
        }
        response.sendRedirect("stats.jsp");
        processRequest(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().removeAttribute("numJuegos");
        getServletContext().removeAttribute("victoriasCliente");
        getServletContext().removeAttribute("victoriasServidor");
        getServletContext().removeAttribute("empates");
        response.sendRedirect("index.html");
        processRequest(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
