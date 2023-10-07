package com.productapp.controller;

import org.springframework.stereotype.Controller;
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
public class Check {

    @RequestMapping("/check")
    public String checker() {
        return "example";
    }

}
