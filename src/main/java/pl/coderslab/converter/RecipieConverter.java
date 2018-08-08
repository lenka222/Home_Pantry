package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.entity.Product;
import pl.coderslab.entity.Recipe;
import pl.coderslab.repository.RecipieRepository;

public class RecipieConverter implements Converter<String, Recipe> {

    @Autowired
    RecipieRepository recipieRepository;

    @Override
    public Recipe convert(String id){ return  recipieRepository.getOne(Long.valueOf(id));}
}
