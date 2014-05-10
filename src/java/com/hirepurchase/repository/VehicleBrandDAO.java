/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.repository;

import com.hirepurchase.model.VehicleBrand;
import com.hirepurchase.model.VehicleType;
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
public class VehicleBrandDAO {
    @Autowired
    private SessionFactory sessionFactory;
    
    @Autowired
    private IdGeneratorDAO idGeneratorDAO;
    
    @Autowired
    public VehicleTypeDAO vehicleTypeDAO;
    
    public VehicleBrandDAO(){
        
    }
    
    public boolean addVehicleBrand(String code, VehicleBrand vehicleBrand){                
        VehicleBrand card = selectVehicleBrandById(vehicleBrand.getVehiclebrandid());
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        if(card == null){
            this.sessionFactory.getCurrentSession().save(vehicleBrand);
            this.sessionFactory.getCurrentSession().flush();
            idGeneratorDAO.updateIndex(code);
        }else{
            this.sessionFactory.getCurrentSession().update(vehicleBrand);
            this.sessionFactory.getCurrentSession().flush();
        } 
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public boolean deleteVehicleBrand(VehicleBrand vehicleBrand){ 
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        this.sessionFactory.getCurrentSession().delete(vehicleBrand);
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public List<VehicleBrand> select(VehicleBrand vehicleBrand){
        String sqlWhere = "";
        if(vehicleBrand.getVehiclebrandid()!=null && !vehicleBrand.getVehiclebrandid().isEmpty()){
            sqlWhere += "AND vehiclebrandid =:vehicle_brand_id ";
        } 
        if(vehicleBrand.getVehicletypeid()!=null && !vehicleBrand.getVehicletypeid().isEmpty()){
            sqlWhere += "AND vehicletypeid =:vehicle_type_id ";
        }
        if(vehicleBrand.getVehiclebrandname()!=null && !vehicleBrand.getVehiclebrandname().isEmpty()){
            sqlWhere += "AND vehiclebrandname =:vehicle_brand_name ";
        }
        sqlWhere += "order by vehiclebrandid";
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        Query qry = this.sessionFactory.getCurrentSession().createQuery("from VehicleBrand where 1=1 "+sqlWhere);
        if(vehicleBrand.getVehiclebrandid()!=null && !vehicleBrand.getVehiclebrandid().isEmpty()){
            qry.setParameter("vehicle_brand_id", vehicleBrand.getVehiclebrandid());
        }
        if(vehicleBrand.getVehicletypeid()!=null && !vehicleBrand.getVehicletypeid().isEmpty()){
            qry.setParameter("vehicle_type_id", vehicleBrand.getVehicletypeid());
        }
        if(vehicleBrand.getVehiclebrandname()!=null && !vehicleBrand.getVehiclebrandname().isEmpty()){
            qry.setParameter("vehicle_brand_name", vehicleBrand.getVehiclebrandname());
        }
        
        List<VehicleBrand> listVehicleBrand = qry.list();
        t.commit();        
        this.sessionFactory.getCurrentSession().close();
        return listVehicleBrand;
    }
    
    public VehicleBrand selectVehicleBrandById(String vehicleBrandId){
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        VehicleBrand brand = (VehicleBrand)this.sessionFactory.getCurrentSession()
                                    .createQuery("from VehicleBrand where vehiclebrandid =:vehicle_brand_id ")
                                    .setParameter("vehicle_brand_id", vehicleBrandId).uniqueResult();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return brand;
    }
}
