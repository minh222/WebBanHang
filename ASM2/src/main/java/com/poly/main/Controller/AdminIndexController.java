package com.poly.main.Controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.poly.main.Dao.UserDao;

@Controller
public class AdminIndexController {
	@Autowired
	UserDao dao;
	
	// mapping đến index.jsp
	@GetMapping("/admin/index")
	public String index(Model model, Principal principal) {
		return "manager/index";
	}
}
