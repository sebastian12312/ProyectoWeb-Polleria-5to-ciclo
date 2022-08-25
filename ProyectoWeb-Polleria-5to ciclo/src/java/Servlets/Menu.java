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

import java.util.ArrayList;
import java.sql.*;
import Productos.ProductosMenu;
import conexionSQL.ConexionDB;
/**
 *
 * @author sebastian
 */
@WebServlet(name = "Menu", urlPatterns = {"/Menu"})
public class Menu extends HttpServlet {

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
        
        
        String op = request.getParameter("op");
        if(op.equals("lista")){
            try {
                PreparedStatement psta = conexionSQL.ConexionDB.getConexion().prepareStatement("select * from Menu");
                ResultSet rs = psta.executeQuery();
                ArrayList<ProductosMenu> lista = new ArrayList<>();
                while(rs.next()){
                    ProductosMenu PM = new ProductosMenu(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getInt(6),rs.getString(7));
                    lista.add(PM);          
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("Menu.jsp").forward(request, response);
            } catch (Exception e) {
            }
        }else if(op.equals("eliminar")){
            try {
                 String id=request.getParameter("id");
                  PreparedStatement sta=ConexionDB.getConexion().prepareStatement("delete from menu where id=?");
                  sta.setString(1, id);
                  sta.executeUpdate();
                  request.getRequestDispatcher("Menu?op=lista").forward(request, response);
            } catch (Exception e) {
            }
            }else if(op.equals("agregar")){
                try {
                String id= request.getParameter("id");
                String tipo= request.getParameter("tipo");
                String nombre= request.getParameter("nombre");
                String descripcion= request.getParameter("descripcion");
                String precio= request.getParameter("precio");
                String cantidad= request.getParameter("cantidad");
                String imagen= request.getParameter("imagen");
                PreparedStatement sta=ConexionDB.getConexion().prepareStatement("insert into menu values(?,?,?,?,?,?,?)");
                sta.setString(1, id);
                sta.setString(2, tipo);
                sta.setString(3, nombre);
                sta.setString(4, descripcion);
                sta.setString(5, precio);
                sta.setString(6, cantidad);
                sta.setString(7, imagen);
         
                 request.getRequestDispatcher("Menu?op=lista").forward(request, response);
                 
                
                
                
            } catch (Exception e) {
            }
            } else if(op.equals("consulta")){
                
                
               try {
                String cod = request.getParameter("id");
              PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from menu where id=?");
              sta.setString(1, cod);
                ResultSet rs = sta.executeQuery();
                ArrayList<ProductosMenu> lista = new ArrayList<ProductosMenu>();
                while(rs.next()){
                    ProductosMenu PM = new ProductosMenu(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getInt(6),rs.getString(7));
                    lista.add(PM);  
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("EditarProductoADM.jsp").forward(request, response);
                
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
