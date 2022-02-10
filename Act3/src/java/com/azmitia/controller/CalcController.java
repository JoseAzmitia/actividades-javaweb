/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.azmitia.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.azmita.model.*;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author joK28
 */
@WebServlet(name = "CalcController", urlPatterns = {"/CalcController"})
public class CalcController extends HttpServlet {

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
            out.println("<title>Servlet CalcController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CalcController at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        
        RequestDispatcher view = request.getRequestDispatcher("calculadora.jsp");
        if ("borrar".equals(request.getParameter("opc"))){
            response.sendRedirect("calculadora.jsp");
        }else
        if ((request.getParameter("num1").isEmpty()) || (request.getParameter("num1").isEmpty())){
            request.setAttribute("resultado", "Ingresa los datos correctamente");
            view.forward(request, response);
        }else{
            
            String n1 = request.getParameter("num1");
            String n2 = request.getParameter("num2");
            String opc = request.getParameter("opc");
        
            Operacion opera = new Operacion(n1, n2);

            switch (opc) {
                case "sumar":
                    opera.calcularSuma();
                    request.setAttribute("resultado", opera.getSuma());
                    view.forward(request, response);
                    break;
                case "restar":
                    opera.calcularResta();
                    request.setAttribute("resultado", opera.getResta());
                    view.forward(request, response);
                    break;
                case "multiplicar":
                    opera.calcularMultiplicacion();
                    request.setAttribute("resultado", opera.getMultiplicacion());
                    view.forward(request, response);
                    break;
                case "dividir":
                    if ((opera.getN1() == 0) || (opera.getN2() == 0)){
                    request.setAttribute("resultado", "No se permite división entre 0");
                    view.forward(request, response);
                    break; 
                    }else{
                    opera.calcularDivision();
                    request.setAttribute("resultado", opera.getDivision());
                    view.forward(request, response);
                    break;    
                    }   
            }
        }
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
