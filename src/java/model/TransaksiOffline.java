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
    public boolean simpan(long nominal){
        return true;
    }
    
    public boolean ambil(long nominal){
        return true;
    }
}
