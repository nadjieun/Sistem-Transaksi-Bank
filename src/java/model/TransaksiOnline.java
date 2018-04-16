/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import service.ServiceTabungan;

/**
 *
 * @author Rachmad
 */
public class TransaksiOnline extends SystemTransaksi {
    public TransaksiOnline(Tabungan tabungan){
        super(tabungan);
    }
    
    public boolean login(String user, int pass){
        tabungan = singletonApp.getInstance().getServiceTabungan().findByUser(tabungan);
        if(tabungan != null){
            if(user.equals(tabungan.getUser())){
                if(tabungan.getPass() ==  pass){
                    return true;
                }
            }
        }
        return false;
    }
}
