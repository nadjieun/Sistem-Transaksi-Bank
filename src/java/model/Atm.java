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
public class Atm extends TransaksiOffline{
    private String alamat;
    
    public Atm(Tabungan tabungan){
        super(tabungan);
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }
    
    public boolean ambil(Long nominal){
        tabungan = singletonApp.getInstance().getServiceTabungan().login(tabungan);
        if(tabungan.getSaldo()-nominal >= 0){
            Long batas;
            if(tabungan.getTipekartu().equals(KartuATM.PLATINUM.getStringValue())){
                batas = KartuATM.PLATINUM.getLongValue();
            } else if (tabungan.getTipekartu().equals(KartuATM.GOLD.getStringValue())){
                batas = KartuATM.GOLD.getLongValue();
            } else {
                batas = KartuATM.SILVER.getLongValue();
            }
            if(nominal > batas){
                return false;
            } else {
                tabungan.setSaldo(tabungan.getSaldo()- nominal);
                singletonApp.getServiceTabungan().update(tabungan.getRekening(), tabungan, 
                    tabungan.getUser(), tabungan.getPass());
                return true;
            }
        }
        return false;
    }
}
