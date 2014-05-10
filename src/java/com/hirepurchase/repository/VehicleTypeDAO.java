/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.repository;

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
public class VehicleTypeDAO {
    @Autowired
    private SessionFactory sessionFactory;
    
    @Autowired
    private IdGeneratorDAO idGeneratorDAO;
    
    public VehicleTypeDAO(){
        
    }
    
    public boolean addVehicleType(String code, VehicleType vehicleType){                
        VehicleType card = selectVehicleTypeById(vehicleType.getVehicletypeid());
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        if(card == null){
            this.sessionFactory.getCurrentSession().save(vehicleType);
            this.sessionFactory.getCurrentSession().flush();
            idGeneratorDAO.updateIndex(code);
        }else{
            this.sessionFactory.getCurrentSession().update(vehicleType);
            this.sessionFactory.getCurrentSession().flush();
        } 
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public boolean deleteVehicleType(VehicleType vehicleType){ 
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();  
        this.sessionFactory.getCurrentSession().delete(vehicleType);
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return true;
    }
    public List<VehicleType> select(VehicleType vehicleType){
        String sqlWhere = "";
        if(vehicleType.getVehicletypeid()!=null && !vehicleType.getVehicletypeid().isEmpty()){
            sqlWhere += "AND vehicletypeid =:vehicle_type_id ";
        }        
        if(vehicleType.getVehicletypename()!=null && !vehicleType.getVehicletypename().isEmpty()){
            sqlWhere += "AND vehicletypename =:vehicle_type_name ";
        }
        sqlWhere += "order by vehicletypeid";
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        Query qry = this.sessionFactory.getCurrentSession().createQuery("from VehicleType where 1=1 "+sqlWhere);
        if(vehicleType.getVehicletypeid()!=null && !vehicleType.getVehicletypeid().isEmpty()){
                qry.setParameter("vehicle_type_id", vehicleType.getVehicletypeid());
            }
        if(vehicleType.getVehicletypename()!=null && !vehicleType.getVehicletypename().isEmpty())qry.setParameter("vehicle_type_name", vehicleType.getVehicletypename());
        
        List<VehicleType> listVehicleType = qry.list();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return listVehicleType;
    }
    
    public VehicleType selectVehicleTypeById(String vehicleTypeId){
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        VehicleType card = (VehicleType)this.sessionFactory.getCurrentSession()
                                    .createQuery("from VehicleType where vehicleTypeid =:vehicle_type_id ")
                                    .setParameter("vehicle_type_id", vehicleTypeId).uniqueResult();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return card;
    }
    
    public List<VehicleType> selectList(){        
        Transaction t = this.sessionFactory.getCurrentSession().beginTransaction();
        Query qry = this.sessionFactory.getCurrentSession().createQuery("from VehicleType order by vehicletypeid ");
        List<VehicleType> listVehicleType = qry.list();
        t.commit();
        this.sessionFactory.getCurrentSession().close();
        return listVehicleType;
    }
}
