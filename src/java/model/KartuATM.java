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
public class KartuATM {
    public enum TipeKartu{
        SILVER(3000000, "Silver"), 
        GOLD(30000000, "Gold"), 
        PLATINUM(300000000, "Platinum");

        private String strKartu;
        private int intKartu;

        private TipeKartu(String strKartu) {
            this.strKartu = strKartu;
        }
        
        private TipeKartu(int intKartu, String strKartu) {
            this.intKartu = intKartu;
            this.strKartu = strKartu;
        }

        public String getStringValue() {
            return strKartu;
        }

        public int getIntValue() {
            return intKartu;
        }
    }
    
    private TipeKartu tipe;
    private Tabungan tabungan = new Tabungan();
    
    public KartuATM(Tabungan tabungan){
        this.tabungan = tabungan;
    }
}
