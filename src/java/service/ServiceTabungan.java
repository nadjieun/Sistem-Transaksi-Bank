/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import model.Tabungan;
import dao_impl.DaoTabungan;
import java.util.List;
/**
 *
 * @author Rachmad
 */
public class ServiceTabungan {
    DaoTabungan daoTabungan;
    
    public ServiceTabungan(){
        daoTabungan = new DaoTabungan();
    }
    
    public Tabungan login(Tabungan tabungan){
        return daoTabungan.findById(tabungan.getRekening());
    }
    
    public void register(Tabungan tabungan){
        daoTabungan.save(tabungan);
    }
    
    public void update(Long rekening, Tabungan tabungan, String newuser, int newpass){
        tabungan.setUser(newuser);
        tabungan.setPass(newpass);
        daoTabungan.update(rekening, tabungan);
    }
    
    public void delete(Tabungan tabungan){
        daoTabungan.delete(tabungan.getRekening());
    }
    
    public List<Tabungan> findAll(){
        return daoTabungan.findAll();
    }
    
    public void createATM(Long rekening,String tipeKartu){
        daoTabungan.createATM(rekening,tipeKartu);
    }
    
    public Tabungan findByUser(Tabungan tabungan){
        return daoTabungan.findByUser(tabungan);
    }
}
