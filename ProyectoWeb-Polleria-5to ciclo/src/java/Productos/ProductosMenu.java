/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Productos;

/**
 *
 * @author sebastian
 */
public class ProductosMenu {
    private String ID;
    private String Tipo;
    private String Nombre;
    private String Descripcion;
    private double  Precio;
    private int Cantidad;
    private String Imagen;

    public ProductosMenu(String ID, String Tipo, String Nombre, String Descripcion, double Precio, int Cantidad, String Imagen) {
        this.ID = ID;
        this.Tipo = Tipo;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        this.Cantidad = Cantidad;
        this.Imagen = Imagen;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

   
   
    
    
    
    
    
}
