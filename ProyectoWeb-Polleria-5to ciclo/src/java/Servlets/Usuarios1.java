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
import java.util.ArrayList;





@WebServlet(name = "Usuarios1", urlPatterns = {"/Usuarios1"})
public class Usuarios1 extends HttpServlet {

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
        
        String op= request.getParameter("op");
        
        if(op.equals("listar")){
            try{
                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from usuario1");
                ResultSet rs = sta.executeQuery();
                ArrayList<Usuario1> lista = new ArrayList<Usuario1>();
                while(rs.next()){
                    Usuario1 user = new Usuario1(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
                    lista.add(user);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("ListaUsuario1.jsp").forward(request, response);
                
            }catch(Exception e){
                System.out.println("Error " + e );   
                
            }
        }else if (op.equals("eliminar")){
            try{
                String id=request.getParameter("id");
                 PreparedStatement sta=ConexionDB.getConexion().
                    prepareStatement("delete from usuario1 where id=?");
                  sta.setString(1, id);
                    sta.executeUpdate();
                  request.getRequestDispatcher("Usuarios1?op=listar").forward(request, response);
            }catch(Exception e){
                
            }
        } else if (op.equals("insertar")){                    
            try {
                
        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        String telefono = request.getParameter("telefono");
        String genero = request.getParameter("genero");
        String rango = request.getParameter("rango");  
        PreparedStatement sta=ConexionDB.getConexion().prepareStatement("insert into usuario1 values(?,?,?,?,?,?,?,?)");
                sta.setString(1, id);
                sta.setString(2, nombre);
                sta.setString(3, apellido);
                sta.setString(4, correo);
                sta.setString(5, password);
                sta.setString(6, telefono);
                sta.setString(7, genero);
                sta.setString(8, rango);
                sta.executeUpdate();
                
                request.getRequestDispatcher("Usuarios1?op=listar").forward(request, response);
                           
                
            } catch (Exception e) {
            }
        } else if (op.equals("consultarCod")){
            
            try {
                String cod = request.getParameter("id");
              PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from usuario1 where id=?");
              sta.setString(1, cod);
                ResultSet rs = sta.executeQuery();
                ArrayList<Usuario1> lista = new ArrayList<Usuario1>();
                while(rs.next()){
                    Usuario1 user = new Usuario1(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
                    lista.add(user);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("EditUsuario1.jsp").forward(request, response);
                
            } catch (Exception e) {
            }
            
        }else if (op.equals("editar")){
            
            try {
                String id = request.getParameter("id");
               
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        String telefono = request.getParameter("telefono");
        String genero = request.getParameter("genero");
        String rango = request.getParameter("rango");  
        PreparedStatement sta=ConexionDB.getConexion().prepareStatement("update usuario1 set id=?, nombre=? , apellido=?, correo=?, password=?,telefono=?, genero=?,rango=?");
                sta.setString(1, id);
                sta.setString(2, nombre);
                sta.setString(3, apellido);
                sta.setString(4, correo);
                sta.setString(5, password);
                sta.setString(6, telefono);
                sta.setString(7, genero);
                sta.setString(8, rango);
                sta.executeUpdate();
                
                request.getRequestDispatcher("Usuarios1?op=listar").forward(request, response);
                           
            } catch (Exception e) {
            }
             
                
            
        }  else if (op.equals("Registrar1")){
                   
       
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
        
        
        try {
                     
        String id = request.getParameter("id");
        id="159";
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String password = request.getParameter("pass");
        String telefono = request.getParameter("telefono");
        String genero = request.getParameter("genero");
        String rango = request.getParameter("rango");  
        
        rango="USUARIO";
        PreparedStatement sta=ConexionDB.getConexion().prepareStatement("insert into usuario1 values(?,?,?,?,?,?,?,?)");
                sta.setString(1, id);
                sta.setString(2, nombre);
                sta.setString(3, apellido);
                sta.setString(4, correo);
                sta.setString(5, password);
                sta.setString(6, telefono);
                sta.setString(7, genero);
                sta.setString(8, rango);
                sta.executeUpdate();
                
                request.getRequestDispatcher("Usuarios1?op=listar").forward(request, response);
                          
            
        } catch (Exception e) {
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
