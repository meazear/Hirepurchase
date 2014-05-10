/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.CodeSystem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author FUJITSU
 */
@Controller
public class UserPrivilegeController {
    @RequestMapping(value="/userprivilege",method = RequestMethod.GET)
	public String displayUserPrivilege(ModelMap model) {     
            System.out.println("IN UserPrivilegeController");
            model.addAttribute("titleName", "บันทึกสิทธิ์เข้าใช้โปรแกรม");
            model.addAttribute("pageUrl", "CodeSystem/UserPrivilege.jsp");
		return "master/main";
 
	}
}
