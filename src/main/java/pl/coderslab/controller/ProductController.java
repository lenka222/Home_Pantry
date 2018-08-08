package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.classes.ShoppingBag;
import pl.coderslab.dao.ProductDao;
import pl.coderslab.entity.Product;
import pl.coderslab.repository.ProductRepository;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    ProductDao productDao;

    @Autowired
    HttpSession session;


    @GetMapping("")
    public String showAll(Model model){
        model.addAttribute("product", productRepository.findAll());
        return "Product/list";
    }

    @GetMapping("/form")
    public String addForm(Model model){
        model.addAttribute("product", new Product());
        return "Product/form";
    }

    @PostMapping("/form")
    public String addForm(@Valid Product product) {
        productDao.save(product);
        return "redirect:/product";
    }

    @GetMapping("/{category}")
    public String showAllByCategory(@RequestParam(required = false) String addToShoppingBag,
                                    @PathVariable String category, Model model){
        List<Product> product = productRepository.findAllByCategoryVegetables(category);
        model.addAttribute("product", product);
        if (addToShoppingBag != null) {
            ShoppingBag bag = (ShoppingBag) session.getAttribute("shoppingBag");
            if (bag == null) throw new IllegalStateException("Nie ma shopping bag!");
            System.out.println("PRODUCT: " + addToShoppingBag);
            Product byName = productRepository.findByName(addToShoppingBag);
            if (byName == null) throw new IllegalStateException("Nie ma produktu");
            bag.getProducts().add(byName.getName());
        }
        return "Product/vegetables";
    }


    @ModelAttribute("products")
    public List<Product> products(){
        return productRepository.findAll();
    }



}
