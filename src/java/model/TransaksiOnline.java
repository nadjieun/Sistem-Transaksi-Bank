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
    Tabungan tabungan;
    Tabungan tabungan2;
    ServiceTabungan serviceTabungan;
    public boolean transfer(long nominal, Long rekTujuan, Integer token){
        if(token.equals(tabungan.getPass())){
            if(tabungan.getSaldo()-nominal >= 0){
                if(tabungan2.getRekening().equals(rekTujuan)){
                    tabungan.setSaldo(tabungan.getSaldo()-nominal);
                    serviceTabungan.login(tabungan2);
                    tabungan2.setSaldo(tabungan2.getSaldo()+nominal);
                }
            }
        }
        return false;
    }
}
