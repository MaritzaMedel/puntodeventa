package Cafe.DAL;

import Cafe.EL.Cafe;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class DAL_Cafe extends DAL_Padre{
    private Cafe c;

    public DAL_Cafe(Connection dbCon) {
        super(dbCon);
    }
    
    public LinkedList<Cafe> queryToDataBase(String idProducto){    
       
        LinkedList<Cafe> cafes=new LinkedList();
        
        CallableStatement cstmt = null;
        ResultSet rs= null;
        try{
            cstmt= this.getDbCon().prepareCall("{call getProducto_sp(?)}",
                    ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            cstmt.setString(1, idProducto);
            
            boolean results= cstmt.execute();
            
            int rowsAffected =0;
            // este while elimina basura de la base de datos y datos innecesarios
            while(results ||rowsAffected != -1){
                if(results){
                    rs=cstmt.getResultSet();
                    break;
                }else{
                    rowsAffected = cstmt.getUpdateCount();
                }
                results = cstmt.getMoreResults();                    
            }
            while(rs.next()){
                cafes.add(new Cafe(rs.getString("idProducto"),rs.getString("nombre"),rs.getString("descripcion"),rs.getInt("precio"),rs.getInt("existencias"),rs.getString("tipoMolienda")));
                
            }
        }catch(SQLException e){
            e.printStackTrace();
            System.out.println("FAILED TO GET RECORD"+ e.toString());
            return null;
        }
        return cafes;           
         
    }
    
    public LinkedList<Cafe> queryToDataBase(){
        return queryToDataBase("");        
    }
    
    public int insertToDataBase(Cafe cafe){
        CallableStatement cstmt = null;
        ResultSet rs = null;
        try {
            cstmt = this.getDbCon().prepareCall("{call tblProducto_insertarProducto_sp(?,?,?,?,?,?)}",
            ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            cstmt.setString("IN_IdProducto", cafe.getIdProducto());
            cstmt.setString("IN_Nombre", cafe.getNombre());
            cstmt.setString("IN_Descripcion", cafe.getDescripcion());
            cstmt.setInt("IN_Precio", cafe.getPrecio());
            cstmt.setInt("IN_Existencias", cafe.getExistencias());
            cstmt.setString("IN_TipoMolienda", cafe.getTipoMolienda());
            


            boolean results = cstmt.execute();
            int rowsAffected = 0;
            
            //Este while elimina basura en la base de datos y datos innecesarios
            while(results ||rowsAffected != -1 ){
                if(results){
                    rs = cstmt.getResultSet();
                    break;
                }else {
                    rowsAffected = cstmt.getUpdateCount();
                }   
                results = cstmt.getMoreResults();
            }     
            int aux = 0;
            if(rs.next()){ aux = rs.getInt(1); }
            return aux;
        }catch(SQLException e){
            System.out.println("Failed to get the collection of records " + e.toString());
        }
        return 0;
    }
    
    public int deleteToDataBase(String idProducto){
        CallableStatement cstmt = null;
        ResultSet rs = null;
        try {
            cstmt = this.getDbCon().prepareCall("{call tblProducto_deleteProducto_sp(?)}", 
                    ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            cstmt.setString("IN_IdCliente", idProducto);
            boolean results = cstmt.execute();
            int rowsAffected = 0;
            
            //Este while elimina basura en la base de datos y datos innecesarios
            while(results ||rowsAffected != -1 ){
                if(results){
                    rs = cstmt.getResultSet();
                    break;
                }else {
                    rowsAffected = cstmt.getUpdateCount();
                }   
                results = cstmt.getMoreResults();
            }
            int aux = 0;
            if(rs.next()){ aux = rs.getInt(1); }
            return aux;
        }catch(SQLException e){
            System.out.println("Failed to get the collection of records " + e.toString());
        }
        return 0;
    }
    public int updateToDataBase(Cafe c){
        CallableStatement cstmt=null;
        ResultSet rs = null;
        try{
            cstmt= this.getDbCon().prepareCall("{call tblProducto_updateProducto_sp(?,?,?,?,?)}",
            ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            cstmt.setString("IN_Nombre",c.getNombre());
            cstmt.setString("IN_Descripcion",c.getDescripcion());
            cstmt.setInt("IN_Precio",c.getPrecio());
            cstmt.setInt("IN_Existencias",c.getExistencias());
            cstmt.setString("IN_TipoMolienda",c.getTipoMolienda());
           
            
            boolean results= cstmt.execute();
            int rowsAffected=0;
            
            //Este while elimina basura en la base de datos y datos innecesarios
            while(results|| rowsAffected != -1){
                if(results){
                    rs=cstmt.getResultSet();
                    break;
                }else{
                    rowsAffected=cstmt.getUpdateCount();
                }
                results=cstmt.getMoreResults();
            }
            int aux=0;
            if(rs.next()){
                aux=rs.getInt(1);
            }
            return aux;
        }catch(SQLException e){
            System.out.println("Failed to get the collection of records " + e.toString());
        }
        return 0;
    }   
}
