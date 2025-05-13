package com.example.PaymentsWebApp.Controller;

import com.example.PaymentsWebApp.Entity.TransactionEntity;
import com.example.PaymentsWebApp.Entity.UserEntity;
import com.example.PaymentsWebApp.services.TransactionService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ViewTransactionsController {

    @Autowired
    private TransactionService transactionService;

    @GetMapping("/viewtransactions")
    public String viewTransactions(Model model, HttpSession session) {
        UserEntity loggedInUser = (UserEntity) session.getAttribute("loggedInUser");

        if (loggedInUser == null) {
            return "redirect:/login";
        }

        List<TransactionEntity> transactions = transactionService.getTransactionsByUser(loggedInUser);
        model.addAttribute("transactions", transactions);
        return "viewtransactions"; // your JSP page name
    }
}
