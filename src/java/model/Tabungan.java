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
public class Tabungan {
    public enum TipeKartu{
        SILVER(3000000, "Silver"), 
        GOLD(30000000, "Gold"), 
        PLATINUM(300000000, "Platinum");

        private String strKartu;
        private int intKartu;

        TipeKartu(String strKartu) {
            this.strKartu = strKartu;
        }
        
        TipeKartu(int intKartu, String strKartu) {
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
    private Long rekening;
    private Long saldo;
    private String user;
    private int pass;
    
    public Tabungan(){
        
    }
    
    public Tabungan(String user, int pass, long saldo){
        this.user = user;
        this.pass = pass;
        this.saldo = saldo;
    }
    public Tabungan(Long rekening, String user, int pass, long saldo){
        this.rekening = rekening;
        this.user = user;
        this.pass = pass;
        this.saldo = saldo;
    }

    public Tabungan(Long rekening) {
        this.rekening = rekening;
    }
    

    public Long getRekening() {
        return rekening;
    }

    public void setRekening(Long rekening) {
        this.rekening = rekening;
    }

    public Long getSaldo() {
        return saldo;
    }

    public void setSaldo(Long saldo) {
        this.saldo = saldo;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public int getPass() {
        return pass;
    }

    public void setPass(int pass) {
        this.pass = pass;
    }
}
