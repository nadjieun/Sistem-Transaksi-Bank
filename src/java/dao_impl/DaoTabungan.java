/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao_impl;

import java.sql.Connection;
import model.Tabungan;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rachmad
 */
public class DaoTabungan {
    public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    public static final String DB_Name = "bank_nr";
    public static final String DB_URL = "jdbc:mysql://localhost/"+DB_Name;
    
    public static final String USER = "root";
    public static final String PASS = "";
    public static final String tbl_tabungan = "tabungan";
    Connection conn = null;
    Statement stmt = null;
    
    public DaoTabungan(){
        create_database();
        create_table_nasabah();
    }
    
    private void openConnection(){
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
        }catch(ClassNotFoundException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    
    private void closeConnection(){
        try{
            if(conn != null)
                conn.close();
        }catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    
    public void save(Tabungan tabungan){
        openConnection();
        try{
            if(conn == null){
                System.out.println("conn is null");
                return;                
            }
            stmt = conn.createStatement();
            String sql = "INSERT INTO "+tbl_tabungan
                    +" (user,pass,saldo)"
                    +"VALUES ("
                    +"'"+tabungan.getUser()+"'"
                    +", "+tabungan.getPass()+", "
                    +tabungan.getSaldo()+")";
            stmt.executeUpdate(sql);
        }
        catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
    }
    
    public void update(long rek, Tabungan tabungan){
        openConnection();
        try{
            if(conn == null){
                System.out.println("Conn is null");
                return;                
            }
            stmt = conn.createStatement();
            String sql = "UPDATE"+tbl_tabungan+" SET user = '"
                    +tabungan.getUser()+"'"+",pass = '"
                    +tabungan.getPass()+"'"+", saldo = "
                    +tabungan.getSaldo()+"WHERE rekening ="+rek;
            stmt.executeUpdate(sql);
        }
        catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
    }
    
    public void delete(long rek){
        openConnection();
        try{
            if(conn == null){
                System.out.println("Conn is null");
                return;                
            }
            stmt = conn.createStatement();
            String sql = "DELETE FROM "+tbl_tabungan+"WHERE rekening ="+rek;
            stmt.executeUpdate(sql);
        }
        catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
    }
    
    public Tabungan findByUser(Tabungan tabungan){
        Tabungan new_tabungan = null;
        openConnection();
        try{
            if(conn == null){
                System.out.println("conn is null");
                return null;                
            }
            stmt = conn.createStatement();
            String sql = "SELECT * FROM "+ tbl_tabungan +" WHERE user='"+tabungan.getUser()+"'";
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.first()){
                long rekening = rs.getLong("rekening");
                String user = rs.getString("user");
                Integer pass = rs.getInt("pass");
                long saldo = rs.getLong("saldo");
                if(pass.equals(tabungan.getPass())){
                    new_tabungan = new Tabungan(rekening,user,pass,saldo);
                }
                rs.close();
            }
        }
        catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
        return new_tabungan;
    }

    public Tabungan findById(long rekening){
        Tabungan tabungan = null;
        openConnection();
        try{
            if(conn == null){
                System.out.println("Conn is null");
                return null;                
            }
            stmt = conn.createStatement();
            String sql = "SELECT * FROM "+tbl_tabungan+" WHERE rekening="+rekening;
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.first()){
                long nid = rs.getLong("rekening");
                String user = rs.getString("user");
                Integer pass = rs.getInt("pass");
                long saldo = rs.getLong("saldo");
                tabungan = new Tabungan(nid,user,pass,saldo);
                rs.close();
            }
        }
        catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
        return tabungan;
    }

    public void create_database(){
        Connection conn = null;
        Statement stmt = null;
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection("jdbc:mysql://localhost/",USER,PASS);
            stmt = conn.createStatement();
            String sql = "CREATE DATABASE IF NOT EXISTS "+DB_Name;
            stmt.executeUpdate(sql);
        }
        catch(SQLException se){
            se.printStackTrace();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
            try{
                if(stmt != null)
                    stmt.close();
            }
            catch(SQLException se2){
            }
            try{
                if(conn != null)
                    conn.close();
            }
            catch(SQLException se){
                se.printStackTrace();
            }
        }
    }
    
    private void create_table_nasabah(){
        Connection conn = null;
        Statement stmt = null;
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            stmt = conn.createStatement();
            String sql = "CREATE TABLE IF NOT EXISTS "+tbl_tabungan+" "
                    +"(rekening INTEGER NOT NULL AUTO_INCREMENT, "
                    +" user VARCHAR(255), "
                    +" pass BIGINT, "
                    +" saldo BIGINT, "
                    +" PRIMARY KEY ( rekening ))";
            stmt.executeUpdate(sql);
        }
        catch(SQLException se){
            se.printStackTrace();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                if(stmt != null)
                    conn.close();
            }
            catch(SQLException se){
                
            }
            try{
                if(conn != null)
                    conn.close();
            }
            catch(SQLException se){
                se.printStackTrace();
            }
        }
    }
}
