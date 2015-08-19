/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Luis
 */
public class Consulta extends Conexion{
    private ResultSet resultados;
    
    public Consulta() {
        try {
            conectar();
        } catch (SQLException ex) {
            Logger.getLogger(Consulta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean buscarUsuarios(String nombre, String pass){
        try {
            getStmt();
            resultados = stmt.executeQuery("SELECT * FROM `usuario` WHERE `email` = '"+nombre+"' AND `pass` = '"+pass+"'");
            if(resultados != null){
                return true;
            }else{
                return false;
            }
            
        } catch (Exception e) {
            System.out.println("Error consulta");
            return false;
        }
    }
    
    public ResultSet hacerConsulta(String consulta){
        try {
            getStmt();
            resultados = stmt.executeQuery(consulta);
            if (resultados != null) {
                return resultados;
            }
            return null;
        } catch (Exception e) {
            System.out.println("Error consulta");
            return null;
        }
    }
    
}
