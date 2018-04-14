/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.List;
import model.Tabungan;
/**
 *
 * @author Rachmad
 */
public class Nasabah {
    private Long id;
    private List<Tabungan> listTabungan;

    public Nasabah(){
        
    }
    
    public Nasabah(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Tabungan> getListTabungan() {
        return listTabungan;
    }

    public void setListTabungan(List<Tabungan> listTabungan) {
        this.listTabungan = listTabungan;
    }
}
