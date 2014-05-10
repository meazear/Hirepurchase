/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.service;

import com.hirepurchase.model.DebtFollowupType;
import com.hirepurchase.repository.DebtFollowupTypeDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class DebtFollowupTypeService {
    @Autowired
    DebtFollowupTypeDAO debtFollowupTypeDAO;
    
    public DebtFollowupTypeService(){
        super();
    }
    
    public boolean add(String code,DebtFollowupType debtFollowupTypeModel) {
        return debtFollowupTypeDAO.addDebtFollowupType(code, debtFollowupTypeModel);
    }
    public boolean delete(DebtFollowupType debtFollowupTypeModel) {
        return debtFollowupTypeDAO.deleteDebtFollowupType(debtFollowupTypeModel);
    }
    
    public List<DebtFollowupType> selectDebtFollowupType(DebtFollowupType debtFollowupType){
        return debtFollowupTypeDAO.select(debtFollowupType);
    }
    
    public DebtFollowupType selectDebtFollowupTypeById(String debtFollowupTypeId){
        return debtFollowupTypeDAO.selectDebtFollowupTypeById(debtFollowupTypeId);
    }
}
