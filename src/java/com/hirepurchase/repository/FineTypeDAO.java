/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.repository;

import com.hirepurchase.model.FineType;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public class FineTypeDAO {
    @Autowired
    private SessionFactory sessionFactory;
    
    @Autowired
    private IdGeneratorDAO idGeneratorDAO;
    
    public FineTypeDAO(){
        
    }
    
    public boolean addFineType(String code, FineType fineType){                
        FineType fine = selectFineTypeById(fineType.getFinetypeid());
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        if(fine == null){
            this.sessionFactory.getCurrentSession().save(fineType);
            this.sessionFactory.getCurrentSession().flush();
            idGeneratorDAO.updateIndex(code);
        }else{
            this.sessionFactory.getCurrentSession().update(fineType);
            this.sessionFactory.getCurrentSession().flush();
        } 
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public boolean deleteFineType(FineType fineType){ 
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        this.sessionFactory.getCurrentSession().delete(fineType);
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public List<FineType> select(FineType fine){
        String sqlWhere = "";
        if(fine.getFinetypeid()!=null && !fine.getFinetypeid().isEmpty()){
                sqlWhere += "AND finetypeid =:fine_type_id ";
            }        
        if(fine.getFinetypename()!=null && !fine.getFinetypename().isEmpty()){
            sqlWhere += "AND finetypename =:fine_type_name ";
        }
        if(fine.getFinerate()!=null){
            sqlWhere += "AND finerate =:fine_rate ";
        }
        if(fine.getFinerateunit()!=null && !fine.getFinerateunit().equals("A")){
            sqlWhere += "AND finerateunit =:fine_rate_unit ";
        }
        sqlWhere += "order by finetypeid";
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        Query qry = this.sessionFactory.getCurrentSession().createQuery("from FineType where 1=1 "+sqlWhere);
        if(fine.getFinetypeid()!=null && !fine.getFinetypeid().isEmpty())qry.setParameter("fine_type_id", fine.getFinetypeid());
        if(fine.getFinetypename()!=null && !fine.getFinetypename().isEmpty())qry.setParameter("fine_type_name", fine.getFinetypename());
        if(fine.getFinerate()!=null)qry.setParameter("fine_rate", fine.getFinerate());
        if(fine.getFinerateunit()!=null && !fine.getFinerateunit().equals("A"))qry.setParameter("fine_rate_unit", fine.getFinerateunit());    
        List<FineType> listFine = qry.list();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return listFine;
    }
    
    public FineType selectFineTypeById(String fineTypeId){
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        FineType fine = (FineType)this.sessionFactory.getCurrentSession()
                                    .createQuery("from FineType where finetypeid =:fine_type_id ")
                                    .setParameter("fine_type_id", fineTypeId).uniqueResult();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return fine;
    }
}
