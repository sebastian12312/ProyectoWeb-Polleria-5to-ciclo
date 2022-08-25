/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Usuarios;

/**
 *
 * @author sebastian
 */
public class Usuario1 {
    private String ID;
    private String Nombre;
    private String Apellido;
    private String Correo;
    private String Password;
    private String Telefeno;
    private String Genero;
    private String Rango;

    public Usuario1(String ID, String Nombre, String Apellido, String Correo, String Password, String Telefeno, String Genero, String Rango) {
        this.ID = ID;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Correo = Correo;
        this.Password = Password;
        this.Telefeno = Telefeno;
        this.Genero = Genero;
        this.Rango = Rango;
    }

    public Usuario1() {
     }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getTelefeno() {
        return Telefeno;
    }

    public void setTelefeno(String Telefeno) {
        this.Telefeno = Telefeno;
    }

    public String getGenero() {
        return Genero;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
    }

    public String getRango() {
        return Rango;
    }

    public void setRango(String Rango) {
        this.Rango = Rango;
    }
    
    
    
}
