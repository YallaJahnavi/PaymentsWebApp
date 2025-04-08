package com.example.PaymentsWebApp.Controller;

import com.example.PaymentsWebApp.Entity.UserEntity;
import com.example.PaymentsWebApp.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserRegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public String showRegisterPage(Model model) {
        model.addAttribute("user", new UserEntity());
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute UserEntity user, Model model) {
        boolean success = userService.registerUser(user);
        if (success) {
            model.addAttribute("msg", "Registration successful! Please login.");
            return "login";
        } else {
            model.addAttribute("error", "Username already exists. Try a different one.");
            return "register";
        }
    }
}
