package com.poly.main.Config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.InMemoryTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import com.poly.main.Service.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private UserDetailsServiceImpl userDetailsService;

	@Autowired
	DataSource dataSource;

	// Encrypt Password
	@Bean
	public PasswordEncoder passwordEncoder() {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		return bCryptPasswordEncoder;
	}

	// Bảo mật thông tin cá nhân user
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.csrf().disable();
		
		// Các trang không yêu cầu login
		http.authorizeRequests().antMatchers("/index", "/login", "/register", "/forgot-password").permitAll();

		// Trang /userInfo yêu cầu phải login với vai trò ROLE_USER hoặc ROLE_ADMIN.
		// Nếu chưa login, nó sẽ redirect tới trang /login.

		http.authorizeRequests().antMatchers("/shop/profile/**", "/shop/favorite/**", "/shop/checkout")
				.access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')");

		// Trang chỉ dành cho ADMIN
		http.authorizeRequests().antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')");

		// Khi người dùng đã login, với vai trò XX.
		// Nhưng truy cập vào trang yêu cầu vai trò YY,
		// Ngoại lệ AccessDeniedException sẽ ném ra.

		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403page");
		// http.rememberMe().key("uniqueAndSecret").tokenValiditySeconds(1296000);
		// Cấu hình cho Login Form.
		http.authorizeRequests().and().formLogin()

				.loginPage("/login")

				.usernameParameter("username").passwordParameter("password")

				.failureForwardUrl("/login").defaultSuccessUrl("/successLogin", true)

				.and().logout().logoutUrl("/logout").logoutSuccessUrl("/index");

	}

}
