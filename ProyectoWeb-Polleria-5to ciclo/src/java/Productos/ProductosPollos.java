    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Productos;

/**
 *
 * @author sebastian
 */
public class ProductosPollos {
    private String ID_POLLOS;
    private String Nombre;
    private int Cantidad ;
    private double Precio;
    private String imagen;

    public ProductosPollos(String ID_POLLOS, String Nombre, int Cantidad, double Precio, String imagen) {
        this.ID_POLLOS = ID_POLLOS;
        this.Nombre = Nombre;
        this.Cantidad = Cantidad;
        this.Precio = Precio;
        this.imagen = imagen;
    }

    public String getID_POLLOS() {
        return ID_POLLOS;
    }

    public void setID_POLLOS(String ID_POLLOS) {
        this.ID_POLLOS = ID_POLLOS;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }


    
}
