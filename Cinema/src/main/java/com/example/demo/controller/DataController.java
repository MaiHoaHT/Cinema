package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dao.UserDataRepo;
import com.example.demo.model.UserData;

@Controller
public class DataController {
	
	@Autowired
	UserDataRepo repo;

	@RequestMapping("/")
	public String homePage() {
		return "home";
	}
	@RequestMapping("/register")
	public String registerPage() {
		return "register";
	}
	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}
//	@RequestMapping("/home_success")
//	public String homeSuccessPage() {
//		return "home_success";
//	}
	@RequestMapping("/saveData")
	@ResponseBody
	public String saveData(UserData userData) {
		String result = "";
		try {
			repo.save(userData);
			result = "Successful!!!";
		}catch (Exception e){
			result ="Not success";
			e.printStackTrace();
		}
		return result;
	}
}
