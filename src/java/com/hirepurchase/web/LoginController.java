/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author FUJITSU
 */
@Controller
public class LoginController {
    
    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
            return "login";

    }
    
    @RequestMapping(value="/loginfailed", method = RequestMethod.GET)
    public String loginerror(ModelMap model) {
System.out.println(" loginfaild :: ");
            model.addAttribute("error", "true");
            return "login";

    }

    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logout(ModelMap model) {
        return login(model);
    }
}
