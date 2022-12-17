package com.example.demo.config;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.demo.model.UserData;

public class CustomUserData implements UserDetails {
	private UserData userData;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		SimpleGrantedAuthority simpleGrantedAuthority = new SimpleGrantedAuthority(userData.getPassword());
		return Arrays.asList(simpleGrantedAuthority);
	}

	public CustomUserData(UserData userData) {
		super();
		this.userData = userData;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return userData.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return userData.getEmail();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
	
}
