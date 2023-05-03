package com.example.Shop.Controller.dto;

import java.util.List;

public class SearchProduct {
	private List<Integer> idCategory;
	private Float price;
	private String nameProduct;
	private String sortBy;
	private Integer priceLow;
	private Integer priceHigh;
	private Integer currentPage;
	private String sort;
	

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public Integer getPriceLow() {
		return priceLow;
	}

	public void setPriceLow(Integer priceLow) {
		this.priceLow = priceLow;
	}

	public Integer getPriceHigh() {
		return priceHigh;
	}

	public void setPriceHigh(Integer priceHigh) {
		this.priceHigh = priceHigh;
	}

	public List<Integer> getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(List<Integer> idCategory) {
		this.idCategory = idCategory;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getNameProduct() {
		return nameProduct;
	}

	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}

	public String getSortBy() {
		return sortBy;
	}

	public void setSortBy(String sortBy) {
		this.sortBy = sortBy;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	

}
