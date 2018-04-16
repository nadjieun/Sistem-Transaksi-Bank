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
public class TransaksiOffline extends SystemTransaksi {
    
    public TransaksiOffline(Tabungan tabungan){
        super(tabungan);
    }
    
    public void simpan(Long nominal){
        tabungan.setSaldo(tabungan.getSaldo()+nominal);
    }
    
    public boolean ambil(Long nominal){
        if(tabungan.getSaldo()-nominal >= 0){
            tabungan.setSaldo(tabungan.getSaldo()- nominal);
            singletonApp.getServiceTabungan().update(tabungan.getRekening(), tabungan, 
                tabungan.getUser(), tabungan.getPass());
            return true;
        }
        return false;
    }
}
