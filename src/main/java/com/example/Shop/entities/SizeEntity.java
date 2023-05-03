package com.example.Shop.entities;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_size")
public class SizeEntity implements Comparable<SizeEntity> {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id")
	private ProductsEntity productsEntity;
	private String value;

	public SizeEntity() {
		
	}
	
	public SizeEntity(ProductsEntity productsEntity, String value) {
		this.productsEntity = productsEntity;
		this.value = value;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public ProductsEntity getProductsEntity() {
		return productsEntity;
	}

	public void setProductsEntity(ProductsEntity productsEntity) {
		this.productsEntity = productsEntity;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Override
	public int compareTo(SizeEntity o) {
		// TODO Auto-generated method stub
		return this.value.compareTo(o.getValue());
	}
}
