/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import java.util.ArrayList;
import java.sql.*;
import Productos.ProductosPollos;
import conexionSQL.ConexionDB;
/**
 *
 * @author sebastian
 */
@WebServlet(name = "Pollos", urlPatterns = {"/Pollos"})
public class Pollos extends HttpServlet {

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
        
        String op =  request.getParameter("op");
        if(op.equals("Listar")){
            try {
                PreparedStatement psta =  conexionSQL.ConexionDB.getConexion().prepareStatement("select * from menu");
                ResultSet rs = psta.executeQuery();
                ArrayList<ProductosPollos>  lista = new ArrayList<>();
                while(rs.next()){
                    ProductosPollos pro = new ProductosPollos(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getDouble(4),rs.getString(5));
                    lista.add(pro);
                    
                }
                request.setAttribute("lista",lista);
                request.getRequestDispatcher("Catalogo.jsp").forward(request, response);
                    
            } catch (Exception e) {
                System.out.println("error");
            }
            
        } if(op.equals("listar")){
            try {
                
            } catch (Exception e) {
            }
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
