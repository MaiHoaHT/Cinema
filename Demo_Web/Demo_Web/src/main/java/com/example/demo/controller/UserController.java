package com.example.demo.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dao.UserDataRepo;
import com.example.demo.model.UserData;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserDataRepo userDataRepo;
	@ModelAttribute
	private void userDataDetails(Model m, Principal p) {
		String emailString = p.getName();
		UserData user = userDataRepo.findByEmail(emailString);
		m.addAttribute("user",user);
	}

	@GetMapping("/")
	public String home() {
		return "user/home_page";
	}
	@GetMapping("/booking_ticket")
	public String bookTicket() {
		return "user/booking_ticket";
	}
}
