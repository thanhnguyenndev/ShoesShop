package com.example.Shop.Controller.dto;

import java.math.BigDecimal;

public class CartItem {
	private int productId;
	private String productName;
	private int quanlity;
	private BigDecimal priceUnit;
	private String productImage;
	private BigDecimal totalPricePerProduct;
	
	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuanlity() {
		return quanlity;
	}

	public void setQuanlity(int quanlity) {
		this.quanlity = quanlity;
	}

	public BigDecimal getPriceUnit() {
		return priceUnit;
	}

	public void setPriceUnit(BigDecimal priceUnit) {
		this.priceUnit = priceUnit;
	}

	public BigDecimal getTotalPricePerProduct() {
		return totalPricePerProduct;
	}

	public void setTotalPricePerProduct(BigDecimal totalPricePerProduct) {
		this.totalPricePerProduct = totalPricePerProduct;
	}
	
	
}
