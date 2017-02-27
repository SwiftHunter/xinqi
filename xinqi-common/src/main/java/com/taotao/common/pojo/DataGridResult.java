package com.taotao.common.pojo;

import java.util.List;

public class DataGridResult {
	public long total;
	
	public long getTotal() {
	    return total;
	}
	public void setTotal(long total) {
	    this.total = total;
	}
	public List<?> rows;
	
	public List<?> getRows() {
	    return rows;
	}
	public void setRows(List<?> rows) {
	    this.rows = rows;
	}
}