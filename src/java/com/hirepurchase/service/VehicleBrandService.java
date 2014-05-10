/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.service;

import com.hirepurchase.model.VehicleBrand;
import com.hirepurchase.repository.VehicleBrandDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class VehicleBrandService {
    @Autowired
    public VehicleBrandDAO vehicleBrandDAO;
    
    public VehicleBrandService() {
        super();
    }

    public boolean add(String code,VehicleBrand vehicleBrandModel) {
        return vehicleBrandDAO.addVehicleBrand(code, vehicleBrandModel);
    }
    public boolean delete(VehicleBrand vehicleBrandModel) {
        return vehicleBrandDAO.deleteVehicleBrand(vehicleBrandModel);
    }
    
    public List<VehicleBrand> selectVehicleBrand(VehicleBrand vehicleBrand){
        return vehicleBrandDAO.select(vehicleBrand);
    }
    
    public VehicleBrand selectVehicleBrandById(String vehicleBrandId){
        return vehicleBrandDAO.selectVehicleBrandById(vehicleBrandId);
    }
}
