package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.repository.ProductRepository;

@Controller
@RequestMapping("/mainpage")
public class MainPageController {

    @Autowired
    ProductRepository productRepository;

        @GetMapping("")
    public String la(Model model){
        model.addAttribute("product", productRepository.findAll());
        return "Main/showalloptions";
    }
//    @GetMapping("/product")
//    public String showAll(Model model){
//        model.addAttribute("product", productRepository.findAll());
//        return "recipie/list";
//    }
}
