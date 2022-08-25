/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Usuarios;

/**
 *
 * @author sebastian
 */
public class UsuarioMotorizado {
    private String ID_M;
    private String Nombre;
    private String Apellido;
    private String Correo;
    private String celular;
    private String Genero;
    private String Placa;
    private String Estado;

    public UsuarioMotorizado(String ID_M, String Nombre, String Apellido, String Correo, String celular, String Genero, String Placa, String Estado) {
        this.ID_M = ID_M;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Correo = Correo;
        this.celular = celular;
        this.Genero = Genero;
        this.Placa = Placa;
        this.Estado = Estado;
    }

    public String getID_M() {
        return ID_M;
    }

    public void setID_M(String ID_M) {
        this.ID_M = ID_M;
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

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getGenero() {
        return Genero;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
    }

    public String getPlaca() {
        return Placa;
    }

    public void setPlaca(String Placa) {
        this.Placa = Placa;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
    
    
}
