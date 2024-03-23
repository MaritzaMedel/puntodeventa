/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Cafe.EL;

/**
 *
 * @author maritzaMedel
 */
public class Cafe {
    private String idProducto;
    private String nombre; 
    private String descripcion;
    private int precio;
    private int existencias;
    private String tipoMolienda;

    public Cafe(String idProducto, String nombre, String descripcion, int precio, int existencias, String tipoMolienda) {
        this.idProducto = idProducto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.existencias = existencias;
        this.tipoMolienda = tipoMolienda;
    }

  
    public Cafe(){
    
    }

    public String getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(String idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getExistencias() {
        return existencias;
    }

    public void setExistencias(int existencias) {
        this.existencias = existencias;
    }

    public String getTipoMolienda() {
        return tipoMolienda;
    }

    public void setTipoMolienda(String tipoMolienda) {
        this.tipoMolienda = tipoMolienda;
    }
}
