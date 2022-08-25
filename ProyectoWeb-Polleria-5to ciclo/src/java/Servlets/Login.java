/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.*;
import conexionSQL.ConexionDB;
import Usuarios.Usuario1;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        
        try{
            PreparedStatement psta  = ConexionDB.getConexion().prepareStatement("select * from usuario1 where correo=? and Password=? and Rango='ADMIN'");
            psta.setString(1, email);
            psta.setString(2, password);
            PreparedStatement psta2  = ConexionDB.getConexion().prepareStatement("select * from usuario1 where correo=? and Password=? and Rango='USUARIO'");
            psta2.setString(1, email);
            psta2.setString(2, password);
            ResultSet rs = psta.executeQuery();
            ResultSet rs2 = psta2.executeQuery();
            if(rs.next()){
                HttpSession sesion = request.getSession();
                sesion.setAttribute("Usurio", rs.getString(2).toString());
                request.getRequestDispatcher("DashBoardAdmin.jsp").forward(request, response);
            } else if(rs2.next()){
                HttpSession sesion2 = request.getSession();
                sesion2.setAttribute("Usurio2", rs.getString(2).toString());
                request.getRequestDispatcher("DashboardUsuario.jsp").forward(request, response);
            } else{
                request.getRequestDispatcher("loguear.jsp").forward(request, response);
            }
        }catch(Exception e ){
            
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
