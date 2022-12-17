package com.example.demo.config;

import javax.management.loading.PrivateClassLoader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.example.demo.dao.UserDataRepo;
import com.example.demo.model.UserData;

public class UserDataServiceImpl implements UserDetailsService {

	@Autowired
	private UserDataRepo userDataRepo;
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		
		UserData userData =  userDataRepo.findByEmail(email);
		if(userData != null) {
			return new CustomUserData(userData);
		}
		
		throw new UsernameNotFoundException("User not available");
	}

}
