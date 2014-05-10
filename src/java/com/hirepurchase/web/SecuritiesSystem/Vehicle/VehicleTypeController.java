/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.SecuritiesSystem.Vehicle;

import com.hirepurchase.model.VehicleType;
import com.hirepurchase.service.IdGeneratorService;
import com.hirepurchase.service.VehicleTypeService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author FUJITSU
 */
@Controller
@RequestMapping("/vehicletype")
public class VehicleTypeController {
    @Autowired
    VehicleTypeService vehicleTypeService;
    
    @Autowired
    IdGeneratorService idgeneratorService;
       
    private final String VEHICLETYPE_PAGE = "master/SecuritiesSystem/Vehicle/VehicleType";
    private final String SEARCH_PAGE = "master/SearchScreen/SearchVehicle";
    
    private VehicleType vehicleTypeModel;
    private List<VehicleType> listVehicleType;
    /**
     *
     * @param model
     * @param flagSearch
     * @param vehicleTypeId
     * @param vehicleType
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayVehicleType(ModelMap model,
            @RequestParam(value="search",required = false) String flagSearch,
            @RequestParam(value="vehicletypeid",required = false) String vehicleTypeId,
            @ModelAttribute("vehicletype") VehicleType vehicleType) {     
        System.out.println("IN VehicleTypeController GET");
        if(flagSearch!= null && flagSearch.equals("0")){
            VehicleType vehicle = getIndex(); 
            vehicleTypeModel = new VehicleType();
            vehicleTypeModel.setVehicletypeid(vehicle.getVehicletypeid());
            vehicleTypeModel.setVehicletypename(vehicle.getVehicletypename());

            model.addAttribute("vehicletype", vehicle);
            model.addAttribute("titleName", "บันทึกรหัสประเภทรถ");            
            return VEHICLETYPE_PAGE;
        }else if(flagSearch!= null && flagSearch.equals("1")){            
            listVehicleType = vehicleTypeService.selectVehicleType(vehicleType);
            model.addAttribute("vehicleTypeList", listVehicleType);
            return SEARCH_PAGE;
        }else{            
            VehicleType vehicle = vehicleTypeService.selectVehicleTypeById(vehicleTypeId);
            vehicleTypeModel.setVehicletypeid(vehicle.getVehicletypeid());
            vehicleTypeModel.setVehicletypename(vehicle.getVehicletypename());
            model.addAttribute("vehicletype", vehicle);
            return VEHICLETYPE_PAGE;
        }         
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "close")
    public String backToCardType(ModelMap model,   
            @ModelAttribute("vehicletype") VehicleType vehicleType) {     
        System.out.println("IN VehicleTypeController POST params = close");
        VehicleType vehicle = getIndex();            
        vehicleTypeModel = new VehicleType();
        vehicleTypeModel.setVehicletypeid(vehicle.getVehicletypeid());
        vehicleTypeModel.setVehicletypename(vehicle.getVehicletypename());

        model.addAttribute("vehicletype", vehicle);
        model.addAttribute("titleName", "บันทึกรหัสประเภทรถ");            
        return VEHICLETYPE_PAGE;        
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "save" )
    public String saveVehicleType(ModelMap model,
            @ModelAttribute("vehicletype") VehicleType vehicleType) {     
        System.out.println("IN VehicleTypeController Save");
        if(vehicleType!=null){
            if(vehicleType.getVehicletypename().isEmpty()){
                model.addAttribute("errorMsg", "กรุณาบันทึกรายละเอียด");                
                vehicleType.setVehicletypeid(vehicleTypeModel.getVehicletypeid());
                vehicleType.setVehicletypename(vehicleTypeModel.getVehicletypename());
            }else{
                vehicleTypeModel.setVehicletypename(vehicleType.getVehicletypename());
                boolean success = vehicleTypeService.add("VT",vehicleTypeModel);
                if(success){    
                    VehicleType vehicle = getIndex();
                    vehicleTypeModel = new VehicleType();
                    vehicleTypeModel.setVehicletypeid(vehicle.getVehicletypeid());
                    vehicleTypeModel.setVehicletypename(vehicle.getVehicletypename());
                }
            }
        }
        model.addAttribute("vehicletype", vehicleTypeModel);
        model.addAttribute("titleName", "บันทึกรหัสประเภทรถ");
	return VEHICLETYPE_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "delete" )
    public String deleteVehicleType(ModelMap model,
            @ModelAttribute("vehicletype") VehicleType vehicleType) {     
        System.out.println("IN VehicleTypeController Delete");
        if(vehicleType!=null){
            boolean success = vehicleTypeService.delete(vehicleTypeModel);
            if(success){                    
                VehicleType vehicle = getIndex();
                vehicleTypeModel = new VehicleType();
                vehicleTypeModel.setVehicletypeid(vehicle.getVehicletypeid());
                vehicleTypeModel.setVehicletypename(vehicle.getVehicletypename());
            }
        }
        model.addAttribute("vehicletype", vehicleTypeModel);
        model.addAttribute("titleName", "บันทึกรหัสประเภทรถ");        
	return VEHICLETYPE_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String searchVehicleType(ModelMap model,
            @RequestParam(value="vehicletypeid",required = false) String vehicletypeid,
            @RequestParam(value="vehicletypename",required = false) String vehicletypename,
            @ModelAttribute("vehicletype") VehicleType vehicleType) {     
        System.out.println("IN VehicleTypeController search");
        if(vehicleType!=null){
            vehicleType.setVehicletypeid(vehicletypeid);
            vehicleType.setVehicletypename(vehicletypename);
            listVehicleType = vehicleTypeService.selectVehicleType(vehicleType);
        }
        model.addAttribute("vehicletype", vehicleType);
        model.addAttribute("vehicleTypeList", listVehicleType);
	return SEARCH_PAGE;
    }
    
    private VehicleType getIndex(){
        String vehicleTypeId = idgeneratorService.getNextIndex("VT",3);
        VehicleType vehicle = new VehicleType();
        vehicle.setVehicletypeid(vehicleTypeId);
        vehicle.setVehicletypename("");
        return vehicle;
    }
}
