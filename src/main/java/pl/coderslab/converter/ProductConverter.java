package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.entity.Product;
import pl.coderslab.entity.Recipe;
import pl.coderslab.repository.ProductRepository;
import pl.coderslab.repository.RecipieRepository;

import java.util.List;

public class ProductConverter implements Converter<String, Product> {

    @Autowired
    ProductRepository productRepository;

    @Override
    public Product convert(String id) {
        return productRepository.getOne(Long.valueOf(id));
    }
}