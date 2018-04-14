/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import model.Nasabah;
import dao_impl.DaoNasabah;
/**
 *
 * @author USER
 */
public class ServiceNasabah {
    DaoNasabah daoNasabah;
    
    public ServiceNasabah(){
        daoNasabah = new DaoNasabah();
    }
    
    public Nasabah login(Nasabah nasabah){
        return daoNasabah.findById(nasabah.getId());
    }
    public void register(Nasabah nasabah){
        daoNasabah.save(nasabah);
    }
    public void delete(Nasabah nasabah){
        daoNasabah.delete(nasabah.getId());
    }
}
