/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Cafe.DAL;

import java.sql.Connection;

/**
 *
 * @author 52281
 */
public class DAL_Padre {
    private Connection dbCon;

    public DAL_Padre(Connection dbCon) {
        this.dbCon = dbCon;
    }
    
    public Connection getDbCon() {
        return dbCon;
    }

    public void setDbCon(Connection dbCon) {
        this.dbCon = dbCon;
    }
    
    
}
