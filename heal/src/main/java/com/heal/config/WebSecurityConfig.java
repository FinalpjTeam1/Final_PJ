package com.heal.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
				.antMatchers("/adminOnly").hasAuthority("ROLE_ADMIN")
				.antMatchers("/","/trail/sidoMap", "/trail/trailMap", "/friend/friendHome","/friend/myProfile","/friend/friendList","/friend/friendDetail")
				.permitAll() //로그인 인증 없이 들어 갈 수 있는 페이지
				.antMatchers("/assets/**","/css/**","/js/**","/font/**","/img/**","/syntax-highlighter/**").permitAll()
				.anyRequest().authenticated()
				.and()
			.formLogin()
				.loginPage("/loginForm").failureUrl("/login?error").permitAll() //로그인 페이지 
				.defaultSuccessUrl("/") 
				.and()
			    .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
			    .addLogoutHandler(new TaskImplementingLogoutHandler()).permitAll().logoutSuccessUrl("/"); 
				//.permitAll();
	}
	  @Override
	  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    auth.inMemoryAuthentication()
	    .withUser("admin").password(passwordEncoder().encode("1234")).roles("ADMIN")
	    .and()
	    .withUser("guest").password(passwordEncoder().encode("guest")).roles("GUEST");
	  }
	  
	  // passwordEncoder() 추가
	  @Bean
	  public BCryptPasswordEncoder passwordEncoder() {
	    return new BCryptPasswordEncoder();
	  }

	  
}