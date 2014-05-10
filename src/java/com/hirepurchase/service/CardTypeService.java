/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.service;

import com.hirepurchase.repository.CardTypeDAO;
import com.hirepurchase.model.CardType;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author FUJITSU
 */
@Service
public class CardTypeService{
    @Autowired
    private CardTypeDAO cardTypeDAO;
    
    

    public CardTypeService() {
        super();
    }

    public boolean add(String code,CardType cardTypeModel) {
        return cardTypeDAO.addCardType(code, cardTypeModel);
    }
    public boolean delete(CardType cardTypeModel) {
        return cardTypeDAO.deleteCardType(cardTypeModel);
    }
    
    public List<CardType> selectCardType(CardType card){
        return cardTypeDAO.select(card);
    }
    
    public CardType selectCardTypeById(String cardTypeId){
        return cardTypeDAO.selectCardTypeById(cardTypeId);
    }
}
