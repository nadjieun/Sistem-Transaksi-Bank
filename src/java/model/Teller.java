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
public class Teller extends TransaksiOffline{
    private String namaTeller;

    public Teller(Tabungan tabungan) {
        super(tabungan);
    }

    public String getNamaTeller() {
        return namaTeller;
    }

    public void setNamaTeller(String namaTeller) {
        this.namaTeller = namaTeller;
    }
}
