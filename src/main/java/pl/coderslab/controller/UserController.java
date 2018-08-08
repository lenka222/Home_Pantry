package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.Recipe;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserRepository userRepository;

    @GetMapping("")
    public String showAll(Model model){
        model.addAttribute("user", userRepository.findAll());
        return "User/list";
    }

    @GetMapping("/form")
    public String addForm(Model model){
        model.addAttribute("user", new User());
        return "User/form";
    }

    @PostMapping("/form")
    public String addForm(@Valid User user) {
        userRepository.save(user);
        return "redirect:/mainpage";
    }
}
