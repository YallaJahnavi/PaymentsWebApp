package com.example.PaymentsWebApp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;

@Controller

public class UserDetailsController {
	@GetMapping("/profile")
  public String showProfile() {
      return "profile"; // Maps to /WEB-INF/jsp/profile.jsp
  }

  @GetMapping("/editprofile")
  public String showEditProfile() {
  	System.out.println("this is edit profile");
  	return "editprofile";
  }

}
