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
    SILVER("3000000"), 
    GOLD("5000000"), 
    PLATINUM("10000000");
    
    private String maxNominal;

    KartuATM(String maxNominal) {
        this.maxNominal = maxNominal;
    }

    public String maxNominal() {
        return maxNominal;
    }
}
