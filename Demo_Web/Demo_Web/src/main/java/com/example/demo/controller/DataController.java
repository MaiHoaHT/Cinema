package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dao.UserDataRepo;
import com.example.demo.model.UserData;
import com.example.demo.service.UserService;


@Controller
public class DataController {
	
	@Autowired
	private UserService userService;
	@RequestMapping("/")
	public String homePage() {
		return "home";
	}

	@RequestMapping("/register")
	public String registerPage() {
		return "register";
	}
	@RequestMapping("/home")
	public String homePage2() {
		return "home";
	}
	@RequestMapping("/signin")
	public String loginPage() {
		return "login";
	}
	@PostMapping("/createUserData")
	public String createUserData(@ModelAttribute UserData user, HttpSession session) {
		boolean checkExistEmail =  userService.checkEmail(user.getEmail());
		if(checkExistEmail) {
			session.setAttribute("msg", "Email đăng kí đã tồn tại !");
		}else {
			UserData userData =  userService.createUserData(user);
			if(userData != null) {
				session.setAttribute("msg", "Đăng kí thành công !");
			}else {
				session.setAttribute("msg", "Đăng kí không thành công!");
			}
		}

		return "redirect:/register";
	}
}
