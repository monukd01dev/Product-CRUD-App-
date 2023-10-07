package com.productapp.controller;

import com.productapp.service.MyServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/*
    Name    : Monu KD (monukd01dev)
    Project : ProductApp
    Date    : 07-Oct-2023
    
    Connect
    Twitter  : https://twitter.com/monukd01dev
    LinkedIN : https://www.linkedin.com/in/monukd01dev/
    GitHub   : https://github.com/monukd01dev
     
*/
@Controller
public class MainController {
    @Autowired
    private MyServices services;

    @RequestMapping("/")
    public String welcomePage(Model model) {
        model.addAttribute("title","Product CRUD App");
        return "welcome";
    }

    @RequestMapping("/add-product")
    public String addProductPage(Model model) {
        model.addAttribute("title","Add Product");
        return "addProductForm";
    }

}
