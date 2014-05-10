/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.CodeSystem;

import com.hirepurchase.model.FineType;
import com.hirepurchase.service.FineTypeService;
import com.hirepurchase.service.IdGeneratorService;
import java.math.BigDecimal;
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
@RequestMapping("/finetype")
public class FineTypeController {
    @Autowired
    FineTypeService fineTypeService;
    
    @Autowired
    IdGeneratorService idgeneratorService;    
    
    private final String FINETYPE_PAGE = "master/CodeSystem/FineType";
    private final String SEARCH_PAGE = "master/SearchScreen/SearchFine";
    
    private FineType fineTypeModel;
    private List<FineType> listFineType;
    /**
     *
     * @param model
     * @param flagSearch
     * @param fineTypeId
     * @param fineType
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayFineType(ModelMap model,
            @RequestParam(value="search",required = false) String flagSearch,
            @RequestParam(value="fineTypeId",required = false) String fineTypeId,
            @ModelAttribute("fine") FineType fineType) {     
        System.out.println("IN FineTypeController GET");
        if(flagSearch!= null && flagSearch.equals("0")){
            FineType fine = getIndex();            
            
            fineTypeModel = new FineType();
            fineTypeModel.setFinetypeid(fine.getFinetypeid());
            fineTypeModel.setFinetypename(fine.getFinetypename());
            fineTypeModel.setFinerate(BigDecimal.ZERO);
            fineTypeModel.setFinerateunit(fine.getFinerateunit());

            model.addAttribute("fine", fine);
            model.addAttribute("titleName", "บันทึกรูปแบบการคำนวณค่าปรับ");            
            return FINETYPE_PAGE;
        }else if(flagSearch!= null && flagSearch.equals("1")){            
            listFineType = fineTypeService.selectFineType(fineType);
            model.addAttribute("fineList", listFineType);
            return SEARCH_PAGE;
        }else{            
            FineType fine = fineTypeService.selectFineTypeById(fineTypeId);
            fineTypeModel.setFinetypeid(fine.getFinetypeid());
            fineTypeModel.setFinetypename(fine.getFinetypename());
            fineTypeModel.setFinerate(fine.getFinerate());
            fineTypeModel.setFinerateunit(fine.getFinerateunit());
            model.addAttribute("fine", fine);
            return FINETYPE_PAGE;
        }         
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "close")
    public String backToFineType(ModelMap model,   
            @ModelAttribute("fine") FineType fineType) {     
        System.out.println("IN FineTypeController POST params = close");
        FineType fine = getIndex();            
        
        fineTypeModel = new FineType();
        fineTypeModel.setFinetypeid(fine.getFinetypeid());
        fineTypeModel.setFinetypename(fine.getFinetypename());
        fineTypeModel.setFinerate(fine.getFinerate());
        fineTypeModel.setFinerateunit(fine.getFinerateunit());
            
        model.addAttribute("fine", fine);
        model.addAttribute("titleName", "บันทึกรูปแบบการคำนวณค่าปรับ");            
        return FINETYPE_PAGE;        
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "save" )
    public String saveCardType(ModelMap model,
            @ModelAttribute("fine") FineType fineType) {     
        System.out.println("IN FineTypeController Save");
        if(fineType!=null){
            if(fineType.getFinetypename().isEmpty()){
                model.addAttribute("errorMsg", "กรุณาบันทึกรายละเอียด");                
                fineType.setFinetypeid(fineTypeModel.getFinetypeid());
                fineType.setFinetypename(fineTypeModel.getFinetypename());
                fineType.setFinerate(fineTypeModel.getFinerate());
                fineType.setFinerateunit(fineTypeModel.getFinerateunit());
            }else{
                fineTypeModel.setFinetypename(fineType.getFinetypename());
                fineTypeModel.setFinerate(fineType.getFinerate());
                fineTypeModel.setFinerateunit(fineType.getFinerateunit());
                boolean success = fineTypeService.add("F",fineTypeModel);
                if(success){  
                    FineType fine = getIndex();
                    fineTypeModel = new FineType();
                    fineTypeModel.setFinetypeid(fine.getFinetypeid());
                    fineTypeModel.setFinetypename(fine.getFinetypename());
                    fineTypeModel.setFinerate(fine.getFinerate());
                    fineTypeModel.setFinerateunit(fine.getFinerateunit());
                }
            }
        }
        model.addAttribute("fine", fineTypeModel);
        model.addAttribute("titleName", "บันทึกรูปแบบการคำนวณค่าปรับ");
	return FINETYPE_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "delete" )
    public String deleteFineType(ModelMap model,
            @ModelAttribute("card") FineType fineType) {     
        System.out.println("IN FineTypeController Delete");
        if(fineType!=null){
            boolean success = fineTypeService.delete(fineTypeModel);
            if(success){   
                FineType fine = getIndex();
                fineTypeModel = new FineType();
                fineTypeModel.setFinetypeid(fine.getFinetypeid());
                fineTypeModel.setFinetypename(fine.getFinetypename());
                fineTypeModel.setFinerate(fine.getFinerate());
                fineTypeModel.setFinerateunit(fine.getFinerateunit());
            }
        }
        model.addAttribute("fine", fineTypeModel);
        model.addAttribute("titleName", "บันทึกรูปแบบการคำนวณค่าปรับ");        
	return FINETYPE_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String searchCardType(ModelMap model,
            @RequestParam(value="finetypeid",required = false) String finetypeid,
            @RequestParam(value="finetypename",required = false) String finetypename,
            @RequestParam(value="finerate",required = false) String finerate,
            @RequestParam(value="finerateunit",required = false) String finerateunit,
            @ModelAttribute("card") FineType fineType) {     
        System.out.println("IN FineTypeController search");
        if(fineType!=null){
            FineType fineModel = new FineType();            
            fineModel.setFinetypeid(finetypeid);
            fineModel.setFinetypename(finetypename);
            if(finerate!=null && !finerate.isEmpty()){
                fineModel.setFinerate(new BigDecimal(finerate));
            }
            if(finerateunit!=null && !finerateunit.equals("A")){
                if(finerateunit.equals("P"))finerateunit = "% ของเงินค่างวด";
                if(finerateunit.equals("B"))finerateunit = "บาท";
                fineModel.setFinerateunit(finerateunit);
            }            
            listFineType = fineTypeService.selectFineType(fineModel);
        }        
        model.addAttribute("fine", fineType);
        model.addAttribute("fineList", listFineType);
	return SEARCH_PAGE;
    }
    
    private FineType getIndex(){
        String fineTypeId = idgeneratorService.getNextIndex("F",2);
        FineType fine = new FineType();        
        fine.setFinetypeid(fineTypeId);
        fine.setFinetypename("");
        fine.setFinerate(BigDecimal.ZERO);
        fine.setFinerateunit("");
        return fine;
    }
}
