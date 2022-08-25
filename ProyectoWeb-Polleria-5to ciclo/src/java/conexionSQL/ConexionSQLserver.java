/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package conexionSQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author sebastian
 */
public class ConexionSQLserver {

 
    public static Connection getConexion(){
        String connectionUrl = "jdbc:sqlserver://DESKTOP-R67N5JT\\SQLEXPRESS:1433;databaseName=Milano;user=sa;password=123456789";
        Connection con = null;
        try  {
             con = DriverManager.getConnection(connectionUrl);
            Statement stmt = con.createStatement();
            System.out.println("Conexion Exitosa");
            //String SQL = "select * from Clientes1";
            //ResultSet rs = stmt.executeQuery(SQL);
            //while (rs.next()) {
            //System.out.println(rs.getString("Nombre") + " " + rs.getString("Apellido"));
            //}     
        }
        // Handle any errors that may have occurred.
        catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
    
    
    
    public static void main(String[] args) {
           ConexionSQLserver.getConexion();
    }
    
}
