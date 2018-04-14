/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author USER
 */
public interface DaoApp<M, ID> {
    public void save(M m);
    public void delete(ID id);
    public M findById(ID id);
}
