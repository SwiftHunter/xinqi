package com.liujun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liujun.entity.Item;
import com.liujun.service.ItemService;
import com.taotao.common.pojo.DataGridResult;

@Controller
public class ItemController {

//	@Autowired
//	private ItemService itemService;
//	
//	@RequestMapping("/item/{itemId}")
//	@ResponseBody
//	private Item getItemById(@PathVariable Integer itemId) {
//		Item item = itemService.getItemById(itemId);
//		return item;
//	}
	@RequestMapping("/test")
	private String showLogin() {
		return "layout";
	}
	@Autowired
	private ItemService itemService;
	
	@RequestMapping("/item/list")
	@ResponseBody
	private DataGridResult getItemById() {
		 DataGridResult result = itemService.getItemList();
	     return result;	
	}
}
