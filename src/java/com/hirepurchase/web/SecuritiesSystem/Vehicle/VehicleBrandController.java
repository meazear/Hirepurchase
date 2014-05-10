/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.SecuritiesSystem.Vehicle;

import com.hirepurchase.model.VehicleBrand;
import com.hirepurchase.model.VehicleType;
import com.hirepurchase.service.IdGeneratorService;
import com.hirepurchase.service.VehicleBrandService;
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
@RequestMapping("/vehiclebrand")
public class VehicleBrandController {
    @Autowired
    VehicleBrandService vehicleBrandService;
    
    @Autowired
    VehicleTypeService vehicleTypeService;
    
    @Autowired
    IdGeneratorService idgeneratorService;
       
    private final String VEHICLEBRAND_PAGE = "master/SecuritiesSystem/Vehicle/VehicleBrand";
    private final String SEARCH_PAGE = "master/SearchScreen/SearchBrand";
    
    private VehicleBrand vehicleBrandModel;
    private List<VehicleBrand> listVehicleBrand;
    /**
     *
     * @param model
     * @param flagSearch
     * @param vehicleBrandId
     * @param vehicleTypeId
     * @param vehicleBrand
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayVehicleBrand(ModelMap model,
            @RequestParam(value="search",required = false) String flagSearch,
            @RequestParam(value="vehiclebrandid",required = false) String vehicleBrandId,
            @RequestParam(value="vehicletypeid",required = false) String vehicleTypeId,
            @ModelAttribute("vehiclebrand") VehicleBrand vehicleBrand) {     
        System.out.println("IN VehicleBrandController GET");
        if(flagSearch!= null && flagSearch.equals("0")){
            VehicleBrand vehicle = getIndex(); 
            vehicleBrandModel = new VehicleBrand();
            vehicleBrandModel.setVehiclebrandid(vehicle.getVehiclebrandid());
            vehicleBrandModel.setVehicletypeid(vehicle.getVehicletypeid());
            vehicleBrandModel.setVehiclebrandname(vehicle.getVehiclebrandname());

            model.addAttribute("vehiclebrand", vehicle);
            model.addAttribute("titleName", "บันทึกรหัสยี่ห้อรถ");     
            model.addAttribute("vehicleTypeList", vehicleTypeService.selectVehicleTypeList());
            return VEHICLEBRAND_PAGE;
        }else if(flagSearch!= null && flagSearch.equals("1")){            
            listVehicleBrand = vehicleBrandService.selectVehicleBrand(vehicleBrand);
            model.addAttribute("vehicleBrandList", listVehicleBrand);
            model.addAttribute("vehicleTypeList", vehicleTypeService.selectVehicleTypeList());
            return SEARCH_PAGE;
        }else{            
            VehicleBrand vehicle = vehicleBrandService.selectVehicleBrandById(vehicleBrandId);
            vehicleBrandModel.setVehiclebrandid(vehicle.getVehiclebrandid());
            vehicleBrandModel.setVehiclebrandname(vehicle.getVehiclebrandname());
            vehicleBrandModel.setVehicletypeid(vehicle.getVehicletypeid());
            model.addAttribute("vehiclebrand", vehicle);
            model.addAttribute("vehicleTypeList", vehicleTypeService.selectVehicleTypeList());
            return VEHICLEBRAND_PAGE;
        }         
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "close")
    public String backToCardBrand(ModelMap model,   
            @ModelAttribute("vehiclebrand") VehicleType vehicleBrand) {     
        System.out.println("IN VehicleBrandeController POST params = close");
        VehicleBrand vehicle = getIndex();            
        vehicleBrandModel = new VehicleBrand();
        vehicleBrandModel.setVehiclebrandid(vehicle.getVehiclebrandid());
        vehicleBrandModel.setVehicletypeid(vehicle.getVehicletypeid());
        vehicleBrandModel.setVehiclebrandname(vehicle.getVehiclebrandname());

        model.addAttribute("vehiclebrand", vehicle);
        model.addAttribute("titleName", "บันทึกรหัสยี่ห้อรถ");   
        model.addAttribute("vehicleTypeList", vehicleTypeService.selectVehicleTypeList());
        return VEHICLEBRAND_PAGE;        
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "save" )
    public String saveVehicleBrand(ModelMap model,
            @ModelAttribute("vehiclebrand") VehicleBrand vehicleBrand) {     
        System.out.println("IN VehicleBrandController Save");
        if(vehicleBrand!=null){
            if(vehicleBrand.getVehiclebrandname().isEmpty()){
                model.addAttribute("errorMsg", "กรุณาบันทึกรายละเอียด");                
                vehicleBrand.setVehiclebrandid(vehicleBrandModel.getVehiclebrandid());
                vehicleBrand.setVehiclebrandname(vehicleBrandModel.getVehiclebrandname());
            }else{
                vehicleBrandModel.setVehiclebrandname(vehicleBrand.getVehiclebrandname());
                vehicleBrandModel.setVehicletypeid(vehicleBrand.getVehicletypeid());
                boolean success = vehicleBrandService.add("VB",vehicleBrandModel);
                if(success){    
                    VehicleBrand vehicle = getIndex();
                    vehicleBrandModel = new VehicleBrand();
                    vehicleBrandModel.setVehiclebrandid(vehicle.getVehiclebrandid());
                    vehicleBrandModel.setVehicletypeid(vehicle.getVehicletypeid());
                    vehicleBrandModel.setVehiclebrandname(vehicle.getVehiclebrandname());
                }
            }
        }
        model.addAttribute("vehiclebrand", vehicleBrandModel);
        model.addAttribute("titleName", "บันทึกรหัสยี่ห้อรถ");
        model.addAttribute("vehicleTypeList", vehicleTypeService.selectVehicleTypeList());
	return VEHICLEBRAND_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "delete" )
    public String deleteVehicleType(ModelMap model,
            @ModelAttribute("vehiclebrand") VehicleBrand vehicleBrand) {     
        System.out.println("IN VehicleBrandController Delete");
        if(vehicleBrand!=null){
            boolean success = vehicleBrandService.delete(vehicleBrandModel);
            if(success){                    
                VehicleBrand vehicle = getIndex();
                vehicleBrandModel = new VehicleBrand();
                vehicleBrandModel.setVehiclebrandid(vehicle.getVehiclebrandid());
                vehicleBrandModel.setVehicletypeid(vehicle.getVehicletypeid());
                vehicleBrandModel.setVehiclebrandname(vehicle.getVehiclebrandname());
            }
        }
        model.addAttribute("vehiclebrand", vehicleBrandModel);
        model.addAttribute("titleName", "บันทึกรหัสยี่ห้อรถ");    
        model.addAttribute("vehicleTypeList", vehicleTypeService.selectVehicleTypeList());
	return VEHICLEBRAND_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String searchVehicleBrand(ModelMap model,
            @RequestParam(value="vehiclebrandid",required = false) String vehicleBrandId,
            @RequestParam(value="vehicletypeid",required = false) String vehicleTypeId,
            @RequestParam(value="vehiclebrandname",required = false) String vehicleBrandName,
            @ModelAttribute("vehiclebrand") VehicleBrand vehicleBrand) {     
        System.out.println("IN VehicleBrandController search");
        if(vehicleBrand!=null){
            vehicleBrand.setVehiclebrandid(vehicleBrandId);
            vehicleBrand.setVehicletypeid(vehicleTypeId);
            vehicleBrand.setVehiclebrandname(vehicleBrandName);
            listVehicleBrand = vehicleBrandService.selectVehicleBrand(vehicleBrand);
        }
        model.addAttribute("vehiclebrand", vehicleBrand);
        model.addAttribute("vehicleBrandList", listVehicleBrand);
        model.addAttribute("vehicleTypeList", vehicleTypeService.selectVehicleTypeList());
	return SEARCH_PAGE;
    }
    
    private VehicleBrand getIndex(){
        String vehicleBrandId = idgeneratorService.getNextIndex("VB",3);
        VehicleBrand vehicle = new VehicleBrand();
        vehicle.setVehiclebrandid(vehicleBrandId);
        
        VehicleType type = new VehicleType();
        type.setVehicletypeid("");
        vehicle.setVehicletypeid("");
        vehicle.setVehiclebrandname("");
        return vehicle;
    }
    
}
