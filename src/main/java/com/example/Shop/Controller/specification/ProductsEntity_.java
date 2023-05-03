package com.example.Shop.Controller.specification;

import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

import org.springframework.data.domain.Sort.Order;

import com.example.Shop.entities.ProductsEntity;

@StaticMetamodel(ProductsEntity.class)
public class ProductsEntity_ {
	public static volatile SingularAttribute<Order, Integer> categoryId;
	public static final String CATEGORY_ID = "categoryId";
}
