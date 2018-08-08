package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.Product;
import pl.coderslab.entity.Recipe;
import pl.coderslab.repository.ProductRepository;
import pl.coderslab.repository.RecipieRepository;
import pl.coderslab.services.RecipesService;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/recipie")
public class RecipeController {

    @Autowired
    RecipieRepository recipieRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    RecipesService recipesService;

    @GetMapping("")
    public String showAll(Model model){
        model.addAttribute("product", recipieRepository.findAll());
        return "recipie/list";
    }

    @GetMapping("/form")
    public String addForm(Model model){
        model.addAttribute("recipie", new Recipe());
        return "recipie/form";
    }

    @PostMapping("/form")
    public String addForm(Recipe recipe) {
        recipieRepository.save(recipe);
        return "redirect:/recipie";
    }

    @ModelAttribute("produkty")
    public List<Product> products(){

        List<Product> all = productRepository.findAll();
        for (Product p : all) {
            p.setRecipes(null);
        }
        return all;
    }

    @ModelAttribute("recipes")
    public List<Recipe> recipes(){
        return recipieRepository.findAll();
    }

    @ModelAttribute("recipesWithIngredients")
    public List<Recipe> recipesWithIngredients() {
        return recipesService.recipesWithIngredients();
    }

    @ModelAttribute("_recipesWithIngredients")
    public List<Recipe> _recipesWithIngredients() {
        List<Recipe> allRecipies = recipieRepository.findAll();
        for (Recipe r : allRecipies) {
            List<Product> ingredients = productRepository.findAllByRecipes(Arrays.asList(r));
            r.setIngredients(ingredients);
        }
        return allRecipies;
    }

}
