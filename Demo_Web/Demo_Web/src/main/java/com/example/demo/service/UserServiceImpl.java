package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.dao.UserDataRepo;
import com.example.demo.model.UserData;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDataRepo userDataRepo;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public UserData createUserData(UserData userData) {
		userData.setPassword(passwordEncoder.encode(userData.getPassword()));
		userData.setRole("USER");
		return userDataRepo.save(userData);
	}

	@Override
	public boolean checkEmail(String email) {
		return userDataRepo.existsByEmail(email);
	}
	
}
