package com.liujun.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Item {
    private Integer id;

    private String itemName;

    private BigDecimal itemPrice;

    private String itemSize;

    private String itemProducer;

    private BigDecimal salePrice;

    private Date createTime;

    private Boolean deletedflag;

    private Integer categoryId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public BigDecimal getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(BigDecimal itemPrice) {
        this.itemPrice = itemPrice;
    }

    public String getItemSize() {
        return itemSize;
    }

    public void setItemSize(String itemSize) {
        this.itemSize = itemSize == null ? null : itemSize.trim();
    }

    public String getItemProducer() {
        return itemProducer;
    }

    public void setItemProducer(String itemProducer) {
        this.itemProducer = itemProducer == null ? null : itemProducer.trim();
    }

    public BigDecimal getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(BigDecimal salePrice) {
        this.salePrice = salePrice;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Boolean getDeletedflag() {
        return deletedflag;
    }

    public void setDeletedflag(Boolean deletedflag) {
        this.deletedflag = deletedflag;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }
}