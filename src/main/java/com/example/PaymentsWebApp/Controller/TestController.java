package com.example.PaymentsWebApp.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 

public class TestController {

		@GetMapping("/test")
		public String showHome() {
			System.out.println("test");
			return"test";
		}
	}

