package com.example.PaymentsWebApp.Controller;

import com.example.PaymentsWebApp.Entity.UserEntity;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserDetailsController {

    @GetMapping("/profile")
    public String showUserProfile(HttpSession session, Model model) {
        UserEntity loggedInUser = (UserEntity) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            model.addAttribute("user", loggedInUser);
            return "profile";
        } else {
            return "redirect:/login";
        }
    }
}
