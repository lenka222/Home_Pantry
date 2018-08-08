package pl.coderslab.dao;


import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.entity.Product;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.awt.print.Book;

@Transactional
@Component
public class ProductDao {

    @PersistenceContext
    EntityManager em;

    public void save(Product product){
        if(product.getId() == null){
            em.persist(product);
        }else{
            em.merge(product);
        }
    }
}
