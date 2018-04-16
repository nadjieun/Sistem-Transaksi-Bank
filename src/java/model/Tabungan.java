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
    private int idKartu;
    private String tipekartu;
    
    public Tabungan(){
        
    }
    
    public Tabungan(String user, int pass, long saldo){
        this.user = user;
        this.pass = pass;
        this.saldo = saldo;
    }
    
    public Tabungan(Long rekening, String user, int pass, Long saldo){
        this.rekening = rekening;
        this.user = user;
        this.pass = pass;
        this.saldo = saldo;
    }
    
    public Tabungan(Long rekening, String user, int pass, Long saldo, String tipe, int idKartu){
        this.rekening = rekening;
        this.user = user;
        this.pass = pass;
        this.saldo = saldo;
        this.tipekartu = tipe;
        this.idKartu = idKartu;
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

    public String getTipekartu() {
        return tipekartu;
    }

    public void setTipekartu(String tipekartu) {
        this.tipekartu = tipekartu;
    }

    public int getIdKartu() {
        return idKartu;
    }

    public void setIdKartu(int idKartu) {
        this.idKartu = idKartu;
    }
}
