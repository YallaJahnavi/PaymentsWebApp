
//package com.example.PaymentsWebApp.Controller;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
////import org.springframework.web.bind.annotation.PostMapping;
//
//@Controller
//
//public class UserDetailsController {
//	@GetMapping("/profile")
//  public String showProfile() {
//      return "profile"; // Maps to /WEB-INF/jsp/profile.jsp
//  }
//
//  @GetMapping("/editprofile")
//  public String showEditProfile() {
//  	System.out.println("this is edit profile");
//  	return "editprofile";
//  }
//
//}
package com.example.PaymentsWebApp.Controller;

import com.example.PaymentsWebApp.Entity.UserEntity;
import com.example.PaymentsWebApp.services.UserService;
import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserDetailsController {
	@Autowired
	private UserService userService;

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
    @GetMapping("/editprofile")
    public String showEditProfilePage(HttpSession session, Model model) {
        UserEntity loggedInUser = (UserEntity) session.getAttribute("loggedInUser");
        if (loggedInUser == null) {
            return "redirect:/login";
        }

        model.addAttribute("user", loggedInUser);
        return "editprofile";  // JSP 
    }

    @PostMapping("/editprofile")
    public String updateAddress(@RequestParam("address") String newAddress, HttpSession session, Model model) {
        UserEntity loggedInUser = (UserEntity) session.getAttribute("loggedInUser");
        if (loggedInUser == null) {
            return "redirect:/login";
        }
        loggedInUser.setAddress(newAddress);
        userService.updateUser(loggedInUser);  // saving updated address

        model.addAttribute("user", loggedInUser);
        model.addAttribute("success", "Address updated successfully.");
        return "redirect:/profile"; 
    }

}
