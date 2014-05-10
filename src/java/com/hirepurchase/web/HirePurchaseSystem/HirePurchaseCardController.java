/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.HirePurchaseSystem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author FUJITSU
 */
@Controller
public class HirePurchaseCardController {
    @RequestMapping(value="/hirepurchasecard",method = RequestMethod.GET)
	public String displayHirePurchaseCard(ModelMap model) {     
            System.out.println("IN CustomerCardController");
            model.addAttribute("titleName", "บันทึกการ์ดลูกหนี้เช่าซื้อ");
            model.addAttribute("pageUrl", "HirePurchaseSystem/HirePurchaseCardMain.jsp");
            return "master/main";
 
	}
}
