/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import dao_impl.DaoTabungan;
import model.Tabungan;
import singleton.SingletonApp;
/**
 *
 * @author Rachmad
 */
public class SystemTransaksi {
    private Tabungan tabungan;
    private Tabungan tabungan2;
    DaoTabungan daoTabungan;
    SingletonApp singletonApp;
    
    public boolean transfer(Long nominal, Long rekTujuan){
        if(tabungan.getSaldo() - nominal >= 0){
            tabungan.setSaldo(tabungan.getSaldo()-nominal);
            singletonApp.getInstance();
            singletonApp.getServiceTabungan();
            tabungan2 = daoTabungan.findById(rekTujuan);
            tabungan2.setSaldo(tabungan2.getSaldo()+nominal);
            return true;
        }
        return false;
    }
    
    public String cekSaldo(){
        String tmp = tabungan.getSaldo().toString();
        return tmp;
    }
    
    public boolean login(String user, String pass){
        if(user.equals(tabungan.getUser())){
            if(pass.equals(tabungan.getPass()))
                return true;
        }
        return false;
    }
}
