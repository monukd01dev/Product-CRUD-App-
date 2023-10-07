package com.productapp.service;

import com.productapp.dao.ProductDao;
import com.productapp.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
@Service
public class MyServices {
    @Autowired
    private ProductDao productDao;

    public void save(Product product) {
        this.productDao.createProduct(product);
    }

    public void delete(long pid){
        this.productDao.delete(pid);
    }

    public List<Product> getAllProduct() {
        return this.productDao.getAll();
    }

    public Product getProduct(long pid) {
        return this.productDao.get(pid);
    }

}
