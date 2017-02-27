package com.liujun.service;

import com.liujun.entity.Item;
import com.taotao.common.pojo.DataGridResult;

public interface ItemService {
	Item getItemById(Integer itemId);
	DataGridResult getItemList();
}
