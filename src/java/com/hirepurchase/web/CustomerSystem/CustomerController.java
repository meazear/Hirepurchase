/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.CustomerSystem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author FUJITSU
 */
@Controller
public class CustomerController {
    @RequestMapping(value="/customerprofile",method = RequestMethod.GET)
	public String displayCustomerMain(ModelMap model) {     
            System.out.println("IN CustomerProfileController");
            model.addAttribute("titleName", "บันทึกประวัติผู้เช่าซื้อ/ผู้ค้ำ");
            model.addAttribute("pageUrl", "CustomerSystem/CustomerMain.jsp");
            return "master/main"; 
	}
}
