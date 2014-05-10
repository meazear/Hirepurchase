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
public class MainMenuController {
    
     @RequestMapping(value="/main",method = RequestMethod.POST)
    public String displayMainMenu(ModelMap model) {     
        System.out.println("IN maincontroller");
            return "master/user/welcome";

    }
    
}
