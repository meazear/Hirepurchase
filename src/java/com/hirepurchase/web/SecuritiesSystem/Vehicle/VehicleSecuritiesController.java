/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.SecuritiesSystem.Vehicle;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author FUJITSU
 */
@Controller
public class VehicleSecuritiesController {
     @RequestMapping(value="/carsecurities",method = RequestMethod.GET)
	public String displayCarSecurities(ModelMap model) {     
            System.out.println("IN CarSecuritiesController");
            model.addAttribute("titleName", "บันทึกหลักทรัพย์ประเภทรถ");
            model.addAttribute("pageUrl", "SecuritiesSystem/Car/CarSecuritiesMain.jsp");
            return "master/main";
 
	}
}
