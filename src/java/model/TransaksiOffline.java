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
    Tabungan tabungan;
    public boolean simpan(long nominal){
        tabungan.setSaldo(tabungan.getSaldo()+nominal);
        return true;
    }
    
    public boolean ambil(long nominal){
        if(tabungan.getSaldo()-nominal >= 0){
            tabungan.setSaldo(tabungan.getSaldo()- nominal);
            return true;
        }
        return false;
    }
}
