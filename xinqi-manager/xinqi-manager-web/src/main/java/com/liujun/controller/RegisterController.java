package com.liujun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liujun.entity.Item;
import com.liujun.service.ItemService;

@Controller
public class RegisterController {

//	@Autowired
//	private ItemService itemService;
//	
//	@RequestMapping("/item/{itemId}")
//	@ResponseBody
//	private Item getItemById(@PathVariable Integer itemId) {
//		Item item = itemService.getItemById(itemId);
//		return item;
//	}
	@RequestMapping("/register")
	private String showLogin() {
		return "register";
	}
}
