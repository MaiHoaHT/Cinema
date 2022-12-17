package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configurers.userdetails.DaoAuthenticationConfigurer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	@Bean
	public UserDetailsService getUserDetailsServices() {
		return new UserDataServiceImpl();
	}
	
	@Bean
	public BCryptPasswordEncoder getPasswordEnconder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public DaoAuthenticationProvider getDaoAuthenticationProvider() {
		DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
		daoAuthenticationProvider.setUserDetailsService(getUserDetailsServices());
		daoAuthenticationProvider.setPasswordEncoder(getPasswordEnconder());
		
		return daoAuthenticationProvider;
	}
	
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/**","/images/**","/css/**","/js/**").permitAll()
								.antMatchers("/admin/**").authenticated()
								.antMatchers("/user/**").authenticated()
								.and().formLogin().loginPage("/signin").loginProcessingUrl("/login")
								.defaultSuccessUrl("/user/")
								.failureUrl("/signin?error")
								.and()
								.logout().invalidateHttpSession(true)
								.clearAuthentication(true)
								.logoutRequestMatcher( new AntPathRequestMatcher("/logout"))
								.logoutSuccessUrl("/home").permitAll().and().csrf().disable()
								.authenticationProvider(getDaoAuthenticationProvider());
								
		return http.build();
	}
}
