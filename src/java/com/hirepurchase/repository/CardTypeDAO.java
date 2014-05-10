/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.repository;

import com.hirepurchase.model.CardType;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author FUJITSU
 */
@Repository
public class CardTypeDAO{
    @Autowired
    private SessionFactory sessionFactory;
    
    @Autowired
    private IdGeneratorDAO idGeneratorDAO;
    
    public CardTypeDAO() {

    }
    
    public boolean addCardType(String code, CardType cardType){                
        CardType card = selectCardTypeById(cardType.getCardTypePK().getCardtypeid());
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        if(card == null){
            this.sessionFactory.getCurrentSession().save(cardType);
            this.sessionFactory.getCurrentSession().flush();
            idGeneratorDAO.updateIndex(code);
        }else{
            this.sessionFactory.getCurrentSession().update(cardType);
            this.sessionFactory.getCurrentSession().flush();
        } 
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public boolean deleteCardType(CardType cardType){ 
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        this.sessionFactory.getCurrentSession().delete(cardType);
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public List<CardType> select(CardType card){
        String sqlWhere = "";
        if(card.getCardTypePK()!=null){
            if(card.getCardTypePK().getCardtypeid()!=null && !card.getCardTypePK().getCardtypeid().isEmpty()){
                sqlWhere += "AND cardTypePK.cardtypeid =:card_type_id ";
            }
        }        
        if(card.getCardtypename()!=null && !card.getCardtypename().isEmpty()){
            sqlWhere += "AND cardtypename =:card_type_name ";
        }
        sqlWhere += "order by cardTypePK.cardtypeid";
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        Query qry = this.sessionFactory.getCurrentSession().createQuery("from CardType where 1=1 "+sqlWhere);
        if(card.getCardTypePK()!=null){
            if(card.getCardTypePK().getCardtypeid()!=null && !card.getCardTypePK().getCardtypeid().isEmpty()){
                qry.setParameter("card_type_id", card.getCardTypePK().getCardtypeid());
            }
        }
        if(card.getCardtypename()!=null && !card.getCardtypename().isEmpty())qry.setParameter("card_type_name", card.getCardtypename());
        
        List<CardType> listCard = qry.list();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return listCard;
    }
    
    public CardType selectCardTypeById(String cardTypeId){
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        CardType card = (CardType)this.sessionFactory.getCurrentSession()
                                    .createQuery("from CardType where cardTypePK.cardtypeid =:card_type_id ")
                                    .setParameter("card_type_id", cardTypeId).uniqueResult();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return card;
    }
}
