/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Boletas;

/**
 *
 * @author sebastian
 */
public class Pedidos {
    
private String ID;
private String Cliente;
private String Correo;
private String Motorizado;
private String Direccion;
private String Nombre_P;
private double Precio_P;
private String Estado;

    public Pedidos(String ID, String Cliente, String Correo, String Motorizado, String Direccion, String Nombre_P, double Precio_P, String Estado) {
        this.ID = ID;
        this.Cliente = Cliente;
        this.Correo = Correo;
        this.Motorizado = Motorizado;
        this.Direccion = Direccion;
        this.Nombre_P = Nombre_P;
        this.Precio_P = Precio_P;
        this.Estado = Estado;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getMotorizado() {
        return Motorizado;
    }

    public void setMotorizado(String Motorizado) {
        this.Motorizado = Motorizado;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getNombre_P() {
        return Nombre_P;
    }

    public void setNombre_P(String Nombre_P) {
        this.Nombre_P = Nombre_P;
    }

    public double getPrecio_P() {
        return Precio_P;
    }

    public void setPrecio_P(double Precio_P) {
        this.Precio_P = Precio_P;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }


        





}
