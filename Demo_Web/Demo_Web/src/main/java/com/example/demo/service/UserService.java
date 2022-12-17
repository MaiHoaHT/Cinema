package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.model.UserData;

public interface UserService {
	public UserData createUserData(UserData userData);
	public boolean checkEmail(String email);
}
