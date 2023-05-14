package com.example.Shop.Controller.dto;

import com.example.Shop.entities.CategoryEntity;
import com.example.Shop.entities.ProductsEntity;
import org.springframework.data.jpa.domain.Specification;

import javax.persistence.criteria.Join;

public class ProductsSpecifications {
	
	public static Specification<ProductsEntity> hasCategoryId(Integer categoryId) {
        return (root, query, builder) -> {
            Join<ProductsEntity, CategoryEntity> join = root.join("categories");
            return builder.and(join.get("id").in(categoryId));
        };
    }

    public static Specification<ProductsEntity> hasPriceLessThan(Long price) {
        return (root, query, builder) -> builder.lessThan(root.get("price"), price);
    }

    public static Specification<ProductsEntity> hasPriceBetween(Long minPrice, Long maxPrice) {
        return (root, query, builder) -> builder.between(root.get("price"), minPrice, maxPrice);
    }

    public static Specification<ProductsEntity> hasPriceGreaterThan(Long price) {
        return (root, query, builder) -> builder.greaterThan(root.get("price"), price);
    }
}
