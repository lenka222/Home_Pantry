package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.Product;
import pl.coderslab.entity.UserProducts;
import pl.coderslab.repository.ProductRepository;
import pl.coderslab.repository.UserProductsRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/UserProduct")
public class UserProductsController {

    @Autowired
    UserProductsRepository userProductsRepository;

    @Autowired
    ProductRepository productRepository;

    @GetMapping("")
    public String showAll(Model model){
        model.addAttribute("product", userProductsRepository.findAll());
        return "UserProduct/list";
    }

    @GetMapping("/form")
    public String addForm(Model model){
        model.addAttribute("UserProduct", new UserProducts());
        return "UserProduct/form";
    }

    @PostMapping("/form")
    public String addForm(@Valid UserProducts userProducts) {
        userProductsRepository.save(userProducts);
        return "redirect:/UserProduct";
    }

//    @GetMapping("/shopping")
//    public String shoping(HttpServletRequest request) {
//        HttpSession sess = request.getSession();
//        List<String> shoppingBag = (List<String>) sess.getAttribute("shoppingBag");
//
//
//        sess.setAttribute("shoppingBag", new ArrayList<String>());
//
//        return "UserProduct/list";
//
//    }

    @ModelAttribute("myproducts")
    public List<Product> products(){
        return productRepository.findAll();
    }


}
