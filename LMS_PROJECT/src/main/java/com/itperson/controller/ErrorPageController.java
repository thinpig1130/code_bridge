package com.itperson.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
@RequestMapping(value = "/error")
public class ErrorPageController {
	
	@RequestMapping(value = "/enter")
	public String EnterError(Model model) {
		return "error/enter_error";
	}
	
	@RequestMapping(value = "/before_login_error")
	public String BerforeLoginError(Model model) {
		return "error/before_login_error";
	}

}
