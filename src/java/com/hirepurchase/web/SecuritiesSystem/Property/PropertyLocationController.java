/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.SecuritiesSystem.Property;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author FUJITSU
 */
@Controller
public class PropertyLocationController {
     @RequestMapping(value="/propertylocation",method = RequestMethod.GET)
	public String displayPropertyLocation(ModelMap model) {     
            System.out.println("IN PropertyLocationController");
            model.addAttribute("titleName", "บันทึกรหัสที่ตั้งหลักทรัพย์");
            model.addAttribute("pageUrl", "SecuritiesSystem/Property/PropertyLocation.jsp");
            return "master/main";
	}
}
