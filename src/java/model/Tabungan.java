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
    private Long rekening;
    private Long saldo;
    private String user;
    private int pass;
    
    public Tabungan(){
        
    }
    
    public Tabungan(Long rekening, String user, int pass, long saldo){
        this.rekening = rekening;
        this.user = user;
        this.pass = pass;
        this.saldo = saldo;
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
