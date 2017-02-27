package com.liujun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/")
	private String showLogin() {
		return "index";
	}
	@RequestMapping("/{page}")
	private String showpage(@PathVariable String page) {
		return page;
	}
}
