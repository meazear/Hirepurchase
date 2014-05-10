/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.CodeSystem;

import com.hirepurchase.model.DebtFollowupType;
import com.hirepurchase.service.DebtFollowupTypeService;
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
@RequestMapping("/debtfollowuprate")
public class DebtFollowUpRateController {
    @Autowired
    DebtFollowupTypeService debtFollowupTypeService;
    
    @Autowired
    IdGeneratorService idgeneratorService;
    
    private final String DEBTFOLLOWUPTYPE_PAGE = "master/CodeSystem/DebtFollowUpRate";
    private final String SEARCH_PAGE = "master/SearchScreen/SearchDebtFollowupType";
    
    private DebtFollowupType debtFollowupTypeModel;
    private List<DebtFollowupType> listDebtFollowupType;
    /**
     *
     * @param model
     * @param flagSearch
     * @param debtFollowupTypeId
     * @param debtFollowupType
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayDebtFollowupType(ModelMap model,
            @RequestParam(value="search",required = false) String flagSearch,
            @RequestParam(value="debtFollowupTypeId",required = false) String debtFollowupTypeId,
            @ModelAttribute("debtfollow") DebtFollowupType debtFollowupType) {     
        System.out.println("IN DebtFollowupTypeController GET");
        if(flagSearch!= null && flagSearch.equals("0")){
            DebtFollowupType debtFollowup = getIndex();            
            
            debtFollowupTypeModel = new DebtFollowupType();
            debtFollowupTypeModel.setDebtfollowuptypeid(debtFollowup.getDebtfollowuptypeid());
            debtFollowupTypeModel.setDebtfollowuptypename(debtFollowup.getDebtfollowuptypename());
            debtFollowupTypeModel.setDebtfollowuprate(BigDecimal.ZERO);
            

            model.addAttribute("debtfollow", debtFollowup);
            model.addAttribute("titleName", "บันทึกรหัสอัตราค่าบริการติดตามหนี้");            
            return DEBTFOLLOWUPTYPE_PAGE;
        }else if(flagSearch!= null && flagSearch.equals("1")){            
            listDebtFollowupType = debtFollowupTypeService.selectDebtFollowupType(debtFollowupType);
            model.addAttribute("debtFollowupTypeList", listDebtFollowupType);
            return SEARCH_PAGE;
        }else{            
            DebtFollowupType debt = debtFollowupTypeService.selectDebtFollowupTypeById(debtFollowupTypeId);
            debtFollowupTypeModel.setDebtfollowuptypeid(debt.getDebtfollowuptypeid());
            debtFollowupTypeModel.setDebtfollowuptypename(debt.getDebtfollowuptypename());
            debtFollowupTypeModel.setDebtfollowuprate(debt.getDebtfollowuprate());
            model.addAttribute("debtfollow", debt);
            return DEBTFOLLOWUPTYPE_PAGE;
        }         
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "close")
    public String backToDebtFollowupType(ModelMap model,   
            @ModelAttribute("debtfollow") DebtFollowupType debtFollowupType) {     
        System.out.println("IN DebtFollowupTypeController POST params = close");
        DebtFollowupType debt = getIndex();            
        
        debtFollowupTypeModel = new DebtFollowupType();
        debtFollowupTypeModel.setDebtfollowuptypeid(debt.getDebtfollowuptypeid());
        debtFollowupTypeModel.setDebtfollowuptypename(debt.getDebtfollowuptypename());
        debtFollowupTypeModel.setDebtfollowuprate(debt.getDebtfollowuprate());
            
        model.addAttribute("debtfollow", debt);
        model.addAttribute("titleName", "บันทึกรหัสอัตราค่าบริการติดตามหนี้");            
        return DEBTFOLLOWUPTYPE_PAGE;        
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "save" )
    public String saveCardType(ModelMap model,
            @ModelAttribute("debtfollow") DebtFollowupType debtFollowupType) {     
        System.out.println("IN DebtFollowupTypeController Save");
        if(debtFollowupType!=null){
            if(debtFollowupType.getDebtfollowuptypename().isEmpty()){
                model.addAttribute("errorMsg", "กรุณาบันทึกรายละเอียด");                
                debtFollowupType.setDebtfollowuptypeid(debtFollowupTypeModel.getDebtfollowuptypeid());
                debtFollowupType.setDebtfollowuptypename(debtFollowupTypeModel.getDebtfollowuptypename());
                debtFollowupType.setDebtfollowuprate(debtFollowupTypeModel.getDebtfollowuprate());
            }else{
                debtFollowupTypeModel.setDebtfollowuptypeid(debtFollowupType.getDebtfollowuptypeid());
                debtFollowupTypeModel.setDebtfollowuptypename(debtFollowupType.getDebtfollowuptypename());
                debtFollowupTypeModel.setDebtfollowuprate(debtFollowupType.getDebtfollowuprate());
                boolean success = debtFollowupTypeService.add("D",debtFollowupTypeModel);
                if(success){  
                    DebtFollowupType fine = getIndex();
                    debtFollowupTypeModel = new DebtFollowupType();
                    debtFollowupTypeModel.setDebtfollowuptypeid(fine.getDebtfollowuptypeid());
                    debtFollowupTypeModel.setDebtfollowuptypename(fine.getDebtfollowuptypename());
                    debtFollowupTypeModel.setDebtfollowuprate(fine.getDebtfollowuprate());
                }
            }
        }
        model.addAttribute("debtfollow", debtFollowupTypeModel);
        model.addAttribute("titleName", "บันทึกรหัสอัตราค่าบริการติดตามหนี้");
	return DEBTFOLLOWUPTYPE_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "delete" )
    public String deleteDebtFollowupType(ModelMap model,
            @ModelAttribute("card") DebtFollowupType debtFollowupType) {     
        System.out.println("IN DebtFollowupTypeController Delete");
        if(debtFollowupType!=null){
            boolean success = debtFollowupTypeService.delete(debtFollowupTypeModel);
            if(success){   
                DebtFollowupType fine = getIndex();
                debtFollowupTypeModel = new DebtFollowupType();
                debtFollowupTypeModel.setDebtfollowuptypeid(fine.getDebtfollowuptypeid());
                debtFollowupTypeModel.setDebtfollowuptypename(fine.getDebtfollowuptypename());
                debtFollowupTypeModel.setDebtfollowuprate(fine.getDebtfollowuprate());
            }
        }
        model.addAttribute("debtfollow", debtFollowupTypeModel);
        model.addAttribute("titleName", "บันทึกรหัสอัตราค่าบริการติดตามหนี้");        
	return DEBTFOLLOWUPTYPE_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String searchDebtFollowupType(ModelMap model,
            @RequestParam(value="debtfollowuptypeid",required = false) String debtfollowuptypeid,
            @RequestParam(value="debtfollowuptypename",required = false) String debtfollowuptypename,
            @RequestParam(value="debtfollowuprate",required = false) String debtfollowuprate,
            @ModelAttribute("debtfollow") DebtFollowupType debtFollowupType) {     
        System.out.println("IN DebtFollowupTypeController search");
        if(debtFollowupType!=null){
            debtFollowupType.setDebtfollowuptypeid(debtfollowuptypeid);
            debtFollowupType.setDebtfollowuptypename(debtfollowuptypename);
            if(debtfollowuprate!=null && !debtfollowuprate.isEmpty()){
                debtFollowupType.setDebtfollowuprate(new BigDecimal(debtfollowuprate));
            }
            
            listDebtFollowupType = debtFollowupTypeService.selectDebtFollowupType(debtFollowupType);
        }
        model.addAttribute("debtfollow", debtFollowupType);
        model.addAttribute("debtFollowupTypeList", listDebtFollowupType);
	return SEARCH_PAGE;
    }
    
    private DebtFollowupType getIndex(){
        String debtFollowupTypeId = idgeneratorService.getNextIndex("D",2);
        DebtFollowupType debt = new DebtFollowupType();        
        debt.setDebtfollowuptypeid(debtFollowupTypeId);
        debt.setDebtfollowuptypename("");
        debt.setDebtfollowuprate(BigDecimal.ZERO);
        return debt;
    }
}
