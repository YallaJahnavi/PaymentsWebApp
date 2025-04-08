package com.example.PaymentsWebApp.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController { 

    @GetMapping("/index")
    public String homePage() {
        return "index";  // Renders home.jsp
    }

//    @GetMapping("/profile")
//    public String profilePage() {
//        return "profile";  // Renders profile.jsp
//    }
    

    @GetMapping("/transactions")
    public String transactionsPage() {
        return "transactions";  // Renders transactions.jsp
    }

    @GetMapping("/bankstatement")
    public String statementPage() {
        return "bankstatement";  // Renders bankstatement.jsp
    }

    @GetMapping("/logout")
    public String logoutPage() {
        return "logout";  // Renders logout.jsp
    }
}
