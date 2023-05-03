package com.example.Shop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.entities.ProductsImagesEntity;

@Repository
public interface ProductImageRepository extends JpaRepository<ProductsImagesEntity, Integer> {
	@Query(value = "SELECT e.* FROM tbl_products_images e Where e.product_id like %?1%"
			, nativeQuery = true)
	public List<ProductsImagesEntity> findByProductId2(int id);
}
