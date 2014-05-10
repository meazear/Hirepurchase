/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.SecuritiesSystem.OtherSecurities;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author FUJITSU
 */
@Controller
public class OtherSecuritiesBrandController {
    @RequestMapping(value="/othersecuritiesbrand",method = RequestMethod.GET)
	public String displayOtherSecuritiesBrand(ModelMap model) {     
            System.out.println("IN OtherSecuritiesBrandController");
            model.addAttribute("titleName", "บันทึกรหัสยี่ห้อหลักทรัพย์อื่นๆ");
            model.addAttribute("pageUrl", "SecuritiesSystem/OtherSecurities/OtherSecuritiesBrand.jsp");
            return "master/main";    
	}
}
