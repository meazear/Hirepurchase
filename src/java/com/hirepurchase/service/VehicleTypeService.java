/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.service;

import com.hirepurchase.model.VehicleType;
import com.hirepurchase.repository.VehicleTypeDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class VehicleTypeService {
    @Autowired
    public VehicleTypeDAO vehicleTypeDAO;
    
    public VehicleTypeService() {
        super();
    }

    public boolean add(String code,VehicleType vehicleTypeModel) {
        return vehicleTypeDAO.addVehicleType(code, vehicleTypeModel);
    }
    public boolean delete(VehicleType vehicleTypeModel) {
        return vehicleTypeDAO.deleteVehicleType(vehicleTypeModel);
    }
    
    public List<VehicleType> selectVehicleType(VehicleType vehicleType){
        return vehicleTypeDAO.select(vehicleType);
    }
    
    public VehicleType selectVehicleTypeById(String vehicleTypeId){
        return vehicleTypeDAO.selectVehicleTypeById(vehicleTypeId);
    }
    public List<VehicleType> selectVehicleTypeList(){
        return vehicleTypeDAO.selectList();
    }
}
