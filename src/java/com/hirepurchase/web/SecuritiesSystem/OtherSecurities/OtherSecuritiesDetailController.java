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
public class OtherSecuritiesDetailController {
    @RequestMapping(value="/othersecuritiesdetail",method = RequestMethod.GET)
	public String displayOtherSecuritiesDetail(ModelMap model) {     
            System.out.println("IN OtherSecuritiesDetailController");
            model.addAttribute("titleName", "บันทึกหลักทรัพย์ประเภทอื่นๆ");
            model.addAttribute("pageUrl", "SecuritiesSystem/OtherSecurities/OtherSecuritiesDetailMain.jsp");
            return "master/main";
	}
}
