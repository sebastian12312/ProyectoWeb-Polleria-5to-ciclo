/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexionSQL;
import java.sql.*;
/**
 *
 * @author sebastian
 */
public class ConexionDB {
    public static Connection getConexion(){
        Connection con =null;
        String cadena ="jdbc:mysql://localhost/milano?user=root&password=";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(cadena);
            System.out.println("Conexion extisoa");
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
        return con;
    }
    
    public static void main (String[] args){
        ConexionDB.getConexion();
    }
    
}
