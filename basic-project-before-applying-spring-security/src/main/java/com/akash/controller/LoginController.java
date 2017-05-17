package com.akash.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping(value = "enterence")
	public String enterence() {
		return "enter";
	}
}
