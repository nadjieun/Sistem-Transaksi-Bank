/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import dao_impl.DaoTabungan;
import model.Tabungan;
import singleton.SingletonApp;
/**
 *
 * @author Rachmad
 */
public class SystemTransaksi {
    Tabungan tabungan;
    SingletonApp singletonApp;

    public Tabungan getTabungan() {
        return tabungan;
    }
    
    public SystemTransaksi(Tabungan tabungan) {
        this.tabungan = tabungan;
        this.singletonApp = new SingletonApp();
    }
    
    public boolean transfer(Long nominal, Long rekTujuan){
        if(tabungan.getSaldo() - nominal >= 0){
             Tabungan tabungan2 = singletonApp.getInstance().getServiceTabungan().login(new Tabungan(rekTujuan));
            if(tabungan2 != null){
                tabungan.setSaldo(tabungan.getSaldo()-nominal);
                tabungan2.setSaldo(tabungan2.getSaldo()+nominal);
                singletonApp.getServiceTabungan().update(tabungan.getRekening(), tabungan,
                        tabungan.getUser(), tabungan.getPass());
                singletonApp.getServiceTabungan().update(tabungan2.getRekening(), tabungan2,
                        tabungan2.getUser(), tabungan2.getPass());
                return true;
            }
        }
        return false;
    }
    
    public String cekSaldo(){
        String tmp = tabungan.getSaldo().toString();
        return tmp;
    }
    
    public boolean login(Long norek, int pass){
        tabungan = singletonApp.getInstance().getServiceTabungan().login(tabungan);
        if(tabungan != null){
            if(norek == tabungan.getRekening()){
                if(tabungan.getPass() ==  pass){
                    return true;
                }
            }
        }
        return false;
    }
    
    public boolean loginATM(int idKartu, int pass){
        tabungan = singletonApp.getInstance().getServiceTabungan().loginATM(tabungan);
        if(tabungan != null){
            if(idKartu == tabungan.getIdKartu()){
                if(tabungan.getPass() ==  pass){
                    return true;
                }
            }
        }
        return false;
    }
    
}
