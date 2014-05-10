/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.service;

import com.hirepurchase.repository.IdGeneratorDAO;
import org.hibernate.tool.hbm2x.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author FUJITSU
 */
@Service
//public class IdGeneratorService extends AbstractService<IdGenerator> implements IIdGeneratorService{
public class IdGeneratorService{
    @Autowired
    private IdGeneratorDAO idgeneratorDAO;

    public IdGeneratorService() {
        super();
    }

    // API

//    @Override
//    protected IOperations<IdGenerator> getDao() {
//        return idGeneratorDAO;
//    }

    public String getNextIndex(String docCode,int length) {
        int num = idgeneratorDAO.getNextIndex(docCode);
        
        String index = docCode+StringUtils.leftPad(""+num, length, "0");
        
        return index;
    }
}
