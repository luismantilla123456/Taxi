/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.*;

/**
 *
 * @author Luis
 */
public class Conexion {
    protected Connection con;
    protected Statement stmt;
    private String serverName = "localhost";
    private String portNumber = "3306";
    private String dataBaseNmae = "taxi";
    private String url = "jdbc:mysql://localhost:3306/"+dataBaseNmae;
    private String userName = "root";
    private String password = "";
    
    private String error;

    public Conexion() {
        
    }
    
    private String getconectionUrl(){
        return url;
    }
    
    public void conectar() throws SQLException{
        con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();  
            con = DriverManager.getConnection(getconectionUrl(),userName,password);
            stmt = con.createStatement();
            
            System.out.println("Conectado");
        } catch (Exception e) {
            System.out.println("");
        }
    }

    public void desconectar(){
        try {
            stmt.close();
            con.close();
        } catch (Exception e) {
            System.out.println("error al desconectar");
        }
    }
    
    public Statement getStmt(){
        return this.stmt;
    }
    
}
