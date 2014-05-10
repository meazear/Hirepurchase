/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.CodeSystem;


import com.hirepurchase.model.UserProfile;
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
@RequestMapping("/usercode")
public class UserCodeController {
    
     @RequestMapping(method = RequestMethod.GET)
	public String displayUserCode(ModelMap model,
                @RequestParam(value="search",required = false) String flagSearch,
                @ModelAttribute("user") UserProfile userProfile) {   
            if(flagSearch.equals("0")){
                return "master/SearchCard";
            }else{
                System.out.println("IN UserCodeController");
                model.addAttribute("titleName", "บันทึกรหัสผู้ใช้งานโปรแกรม");
                model.addAttribute("pageUrl", "CodeSystem/UserCode.jsp");
                model.addAttribute("user", userProfile);
		return "master/main";
            }
	}
}
