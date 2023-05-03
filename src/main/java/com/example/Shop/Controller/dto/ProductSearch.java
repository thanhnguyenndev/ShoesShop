package com.example.Shop.Controller.dto;

public class ProductSearch {
	private int page;
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String name;
	
	public String title;
	
	public String keywork;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getKeywork() {
		return keywork;
	}

	public void setKeywork(String keywork) {
		this.keywork = keywork;
	}
	
	
}
