package com.example.PaymentsWebApp.Controller;

import com.example.PaymentsWebApp.Entity.UserEntity;
import com.example.PaymentsWebApp.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserLoginController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        Model model) {

        UserEntity user = userService.validateUser(username, password);
        if (user != null) {
            model.addAttribute("user", user);  // pass user to index.jsp
            return "index";  // forward to index.jsp
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";  // stay on login page with error
        }
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }
}
