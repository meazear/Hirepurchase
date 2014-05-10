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
public class OtherSecuritiesTypeController {
    @RequestMapping(value="/othersecuritiestype",method = RequestMethod.GET)
	public String displayOtherSecuritiesType(ModelMap model) {     
            System.out.println("IN OtherSecuritiesTypeController");
            model.addAttribute("titleName", "บันทึกรหัสประเภทหลักทรัพย์อื่นๆ");
            model.addAttribute("pageUrl", "SecuritiesSystem/OtherSecurities/OtherSecuritiesType.jsp");
            return "master/main";
	}
}
