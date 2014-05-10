/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.LoanSystem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author FUJITSU
 */
@Controller
public class LoanCardController {
    @RequestMapping(value="/loancard",method = RequestMethod.GET)
	public String displayLoanCard(ModelMap model) {     
            System.out.println("IN LoanCardController");
            model.addAttribute("titleName", "บันทึกการ์ดลูกหนี้เงินกู้");
            model.addAttribute("pageUrl", "LoanSystem/LoanCardMain.jsp");
            return "master/main";
 
	}
}
