package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.classes.ShoppingBag;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

    @Autowired
    UserRepository userRepository;
@GetMapping
    public String home(){
    return "Main/home";
}

@GetMapping("/login")
    public String login(){
    return "Main/login";
}
@PostMapping("/login")
public String login(HttpServletRequest request){
    String nick = request.getParameter("nick");
   String password = request.getParameter("password");
User temp = userRepository.findFirstByNick(nick);
if(temp != null){
    if (BCrypt.checkpw(password, temp.getPassword())){
        HttpSession session = request.getSession();
                session.setAttribute("user", temp);
                session.setAttribute("shoppingBag", new ShoppingBag());
        return "redirect:/mainpage";

    }
}
    return "redirect:/login";
}

@GetMapping("/logout")
    public String logout(HttpServletRequest request){
    HttpSession session= request.getSession();
    session.invalidate();
    return "redirect:/login";
}
}
