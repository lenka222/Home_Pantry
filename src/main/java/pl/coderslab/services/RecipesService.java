package pl.coderslab.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.entity.Recipe;
import pl.coderslab.repository.RecipieRepository;

import java.util.List;

@Service
@Transactional
public class RecipesService {

    @Autowired
    RecipieRepository recipieRepository;

    public List<Recipe> recipesWithIngredients() {
        List<Recipe> allRecipes = recipieRepository.findAll();
        allRecipes.forEach(recipe -> recipe.getIngredients().size());
        return allRecipes;
    }
}
