package com.productapp.dao;

import com.productapp.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
@Repository
public class ProductDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    //create(createProduct)orUpdate
    @Transactional
    public void createProduct(Product product) {
        this.hibernateTemplate.saveOrUpdate(product);
    }

    //get(read)
    public Product get(long id) {
        return this.hibernateTemplate.get(Product.class, id);
    }

    //read(getAll)
    public List<Product> getAll() {
        return this.hibernateTemplate.loadAll(Product.class);
    }

    //delete
    @Transactional
    public void delete(long id) {
        this.hibernateTemplate.delete(get(id));
    }

}
