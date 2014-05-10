/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.repository;

import com.hirepurchase.model.IdGenerator;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author FUJITSU
 */
@Repository
public class IdGeneratorDAO{
    @Autowired
    private SessionFactory sessionFactory;
    
    public IdGeneratorDAO() {

    }
    
    /**
     *
     * @param code
     * @return
     */
    @Transactional
    public IdGenerator getIdGenerator(String code) {            
        IdGenerator idGen = (IdGenerator)this.sessionFactory.getCurrentSession().createQuery("from IdGenerator "
                + "where idgeneratorPK.charcode=:code ")
                .setParameter("code", code)
                .uniqueResult();
        return idGen;
    }
    
    public int getNextIndex(String code) {
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        IdGenerator id = getIdGenerator(code);
        int index = id.getIndex()+1;
        t.commit();
        return index;
    }
    
    public boolean updateIndex(String code) {        
        try{
            IdGenerator id = getIdGenerator(code);
            int index = id.getIndex()+1;
            id.setIndex(index);
            this.sessionFactory.getCurrentSession().update(id);
            this.sessionFactory.getCurrentSession().flush();
        }catch(HibernateException ex){
            ex.getMessage();
            return false;
        }
        return true;
    }
}
