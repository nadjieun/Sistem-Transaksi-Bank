/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Rachmad
 */
public class SystemTransaksi {
    private Tabungan tabungan;
    
    public boolean transfer(long nominal, long rekTujuan){
        return true;
    }
    
    public String cekSaldo(){
        return "s";
    }
    
    public boolean login(String user, String pass){
        return true;
    }
}
