/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.repository;

import com.hirepurchase.model.DebtFollowupType;
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
public class DebtFollowupTypeDAO {
    @Autowired
    private SessionFactory sessionFactory;
    
    @Autowired
    private IdGeneratorDAO idGeneratorDAO;
    
    public DebtFollowupTypeDAO(){
        
    }
    
    public boolean addDebtFollowupType(String code, DebtFollowupType debtFollowupType){                
        DebtFollowupType fine = selectDebtFollowupTypeById(debtFollowupType.getDebtfollowuptypeid());
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        if(fine == null){
            this.sessionFactory.getCurrentSession().save(debtFollowupType);
            this.sessionFactory.getCurrentSession().flush();
            idGeneratorDAO.updateIndex(code);
        }else{
            this.sessionFactory.getCurrentSession().update(debtFollowupType);
            this.sessionFactory.getCurrentSession().flush();
        } 
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public boolean deleteDebtFollowupType(DebtFollowupType debtFollowupType){ 
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        this.sessionFactory.getCurrentSession().delete(debtFollowupType);
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public List<DebtFollowupType> select(DebtFollowupType debtFollowupType){
        String sqlWhere = "";
        if(debtFollowupType.getDebtfollowuptypeid()!=null && !debtFollowupType.getDebtfollowuptypeid().isEmpty()){
                sqlWhere += "AND debtfollowuptypeid =:debt_followup_type_id ";
            }        
        if(debtFollowupType.getDebtfollowuptypename()!=null && !debtFollowupType.getDebtfollowuptypename().isEmpty()){
            sqlWhere += "AND debtfollowuptypename =:debt_followup_type_name ";
        }
        if(debtFollowupType.getDebtfollowuprate()!=null){
            sqlWhere += "AND debtfollowuprate =:debt_followup_rate ";
        }        
        sqlWhere += "order by debtfollowuptypeid";
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        Query qry = this.sessionFactory.getCurrentSession().createQuery("from DebtFollowupType where 1=1 "+sqlWhere);
        if(debtFollowupType.getDebtfollowuptypeid()!=null && !debtFollowupType.getDebtfollowuptypeid().isEmpty())qry.setParameter("debt_followup_type_id", debtFollowupType.getDebtfollowuptypeid());
        if(debtFollowupType.getDebtfollowuptypename()!=null && !debtFollowupType.getDebtfollowuptypename().isEmpty())qry.setParameter("debt_followup_type_name", debtFollowupType.getDebtfollowuptypename());
        if(debtFollowupType.getDebtfollowuprate()!=null)qry.setParameter("debt_followup_rate", debtFollowupType.getDebtfollowuprate());   
        List<DebtFollowupType> listDebtFollowupType = qry.list();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return listDebtFollowupType;
    }
    
    public DebtFollowupType selectDebtFollowupTypeById(String debtFollowupTypeId){
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        DebtFollowupType debtFollowupType = (DebtFollowupType)this.sessionFactory.getCurrentSession()
                                    .createQuery("from DebtFollowupType where debtfollowuptypeid =:debt_followup_type_id ")
                                    .setParameter("debt_followup_type_id", debtFollowupTypeId).uniqueResult();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return debtFollowupType;
    }
}
