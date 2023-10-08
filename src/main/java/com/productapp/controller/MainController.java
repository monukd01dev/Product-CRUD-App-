package com.productapp.controller;

import com.productapp.model.Product;
import com.productapp.service.MyServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
        List<Product> productList =services.getAllProduct();
        model.addAttribute("productList", productList);
        return "welcome";
    }

//    Show product Form

    @RequestMapping("/add-product")
    public String addProductPage(Model model) {
        model.addAttribute("title","Add Product");
        return "addProductForm";
    }

//    Handle Product Form
    @RequestMapping(value = "/handle-product",method = RequestMethod.POST)
    public RedirectView handleProduct(@ModelAttribute Product product, RedirectView redirectView, HttpServletRequest request) {
        System.out.println(product);
        services.save(product);
        redirectView.setUrl(request.getContextPath()+"/");
        return redirectView;
    }

//    Handle Delete Request
    @RequestMapping("/delete/{productId}")
    public RedirectView deleteProduct(@PathVariable("productId") long productId, RedirectView redirectView, HttpServletRequest request) {
        services.delete(productId);
        redirectView.setUrl(request.getContextPath()+"/");
        return redirectView;
    }

    //    updateForm
    @RequestMapping("/update/{productId}")
    public String updateForm(@PathVariable("productId") long productId, Model model) {
        Product product = services.getProduct(productId);
        model.addAttribute("product", product);
        model.addAttribute("title","Update Product");
        return "updateForm";
    }


}
