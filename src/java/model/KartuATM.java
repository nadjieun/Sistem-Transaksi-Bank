/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author USER
 */
public enum KartuATM {
    SILVER(1000000L, "Silver"), 
    GOLD(5000000L, "Gold"), 
    PLATINUM(10000000L, "Platinum");

    private String strKartu;
    private Long longKartu;

    KartuATM(String strKartu) {
        this.strKartu = strKartu;
    }

    KartuATM(Long longKartu, String strKartu) {
        this.longKartu = longKartu;
        this.strKartu = strKartu;
    }

    public String getStringValue() {
        return strKartu;
    }

    public Long getLongValue() {
        return longKartu;
    }
}
