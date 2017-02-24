package com.liujun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liujun.entity.Item;
import com.liujun.entity.ItemExample;
import com.liujun.entity.ItemExample.Criteria;
import com.liujun.mapper.ItemMapper;

@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemMapper itemMapper;
	@Override
	public Item getItemById(Integer itemId) {
		//TbItem item = itemMapper.selectByPrimaryKey(itemId);
		ItemExample example = new ItemExample();
		//创建查询条件
		Criteria criteria = example.createCriteria();
		criteria.andIdEqualTo(itemId);
		List<Item> list = itemMapper.selectByExample(example);
		//判断list中是否为空
		Item item = null;
		if (list != null && list.size() > 0) {
			item = list.get(0);
		}
		return item;
	}

}
