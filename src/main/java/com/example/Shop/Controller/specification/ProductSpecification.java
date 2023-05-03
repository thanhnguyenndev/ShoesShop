package com.example.Shop.Controller.specification;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import com.example.Shop.entities.ProductsEntity;

public class ProductSpecification {
	
	private ProductSpecification() {}
	@SuppressWarnings("serial")
	public static Specification<ProductsEntity> filterBy(Integer priceLow, Integer priceHigh, 
			List<Integer> idCategory,String nameProduct){
				return new Specification<ProductsEntity>() {
					
					@Override
					public Predicate toPredicate(Root<ProductsEntity> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
						// TODO Auto-generated method stub
						List<Predicate> predicates = new ArrayList<>();
						query.distinct(true);                
		                if (idCategory!=null && !idCategory.isEmpty()) {
		                	predicates.add(criteriaBuilder.and(root.get("value").in(idCategory)));
		                }
		                if (priceLow!=null && priceLow>=0) {
		                	predicates.add(criteriaBuilder.and(criteriaBuilder.greaterThanOrEqualTo(root.get("price"), priceLow)));
		                }   
		                if (priceHigh!=null && priceHigh>=0) {
		                	predicates.add(criteriaBuilder.and(criteriaBuilder.lessThanOrEqualTo(root.get("price"), priceHigh)));
		                }  
		                
		                if(nameProduct!=null && !nameProduct.isEmpty()) {
		                    predicates.add(criteriaBuilder.and(criteriaBuilder.like(root.get("title"), "%"+nameProduct+"%")));
		                }
		                return criteriaBuilder.and(predicates.toArray(new Predicate[predicates.size()]));
					}
				};
		
	}
	
//	Specification<ProductsEntity> specificationCategory = (root, query, criteriaBuilder) -> {
//		if (categoryIds != null && !categoryIds.isEmpty()) {
//			return criteriaBuilder.and(root.get("categoryId").in(categoryIds));
//		}
//		return null;
//	};
//
//	Specification<ProductsEntity> specificationNameProduct = (root, query, criteriaBuilder) -> {
//		if (nameProduct != null && !nameProduct.isEmpty()) {
//			return criteriaBuilder.like(root.get("title"), "%" + nameProduct + "%");
//		}
//		return null;
//	};
//	
//	Specification<ProductsEntity> specificationPrice = (root, query, criteriaBuilder) -> {
//		if (productPrice != null && (productPrice < 1000000)) {
//			return criteriaBuilder.lessThan(root.get("price"), 1000000);
//		} else if (productPrice != null && (productPrice >= 1000000) && productPrice < 3000000) {
//			return criteriaBuilder.between(root.get("price"),
//					criteriaBuilder.greaterThan(root.get("price"), 1000000),
//					criteriaBuilder.lessThan(root.get("price"), 3000000));
//		} else if (productPrice != null && (productPrice >= 3000000) && productPrice <= 5000000) {
//			return criteriaBuilder.between(root.get("price"),
//					criteriaBuilder.greaterThan(root.get("price"), 3000000),
//					criteriaBuilder.lessThan(root.get("price"), 5000000));
//		} else if (productPrice != null && (productPrice >= 1000000) && productPrice < 3000000) {
//			return criteriaBuilder.greaterThan(root.get("price"), 5000000);
//		}
//		return null;
//	};
//
//	Specification<ProductsEntity> specification = Specification.where(specificationCategory);
//
//	if (specificationNameProduct != null && specificationPrice!=null) {
//		specification.and(specificationNameProduct).and(specificationPrice);
//	}
//
//	Pageable pageable = PageRequest.of(currentPage, sizeOfPage, sort);
//	return productRepo.findAll(specification, pageable);
}
