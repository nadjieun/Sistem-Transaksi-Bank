/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package singleton;
import service.ServiceATM;
import service.ServiceNasabah;
import service.ServiceTabungan;

/**
 *
 * @author USER
 */
public class SingletonApp {
    private static SingletonApp instance = null;
    
    public SingletonApp getInstance(){
        if(instance == null)
            instance = new SingletonApp();
        return instance;
    }
   
    public SingletonApp(){
        init();
    }
   
    private ServiceTabungan serviceTabungan;
    private ServiceNasabah serviceNasabah;
    private ServiceATM serviceATM;
            
    private void init(){
        serviceTabungan = new ServiceTabungan();
        serviceNasabah = new ServiceNasabah();
        serviceATM = new ServiceATM();
    }
    
    public ServiceTabungan getServiceTabungan(){
        return serviceTabungan;
    }
    public ServiceNasabah getServiceNasabah(){
        return serviceNasabah;
    }
    public ServiceATM getServiceATM(){
        return serviceATM;
    }
}
