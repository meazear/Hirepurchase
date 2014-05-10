/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.service;

import com.hirepurchase.model.FineType;
import com.hirepurchase.repository.FineTypeDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class FineTypeService {
    @Autowired
    FineTypeDAO fineTypeDAO;
    
    public FineTypeService(){
        super();
    }
    
    public boolean add(String code,FineType fineTypeModel) {
        return fineTypeDAO.addFineType(code, fineTypeModel);
    }
    public boolean delete(FineType fineTypeModel) {
        return fineTypeDAO.deleteFineType(fineTypeModel);
    }
    
    public List<FineType> selectFineType(FineType card){
        return fineTypeDAO.select(card);
    }
    
    public FineType selectFineTypeById(String fineTypeId){
        return fineTypeDAO.selectFineTypeById(fineTypeId);
    }
}
