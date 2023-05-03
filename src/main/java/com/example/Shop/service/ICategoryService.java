package com.example.Shop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.example.Shop.entities.CategoryEntity;

public interface ICategoryService {

	<S extends CategoryEntity> List<S> findAll(Example<S> example, Sort sort);

	<S extends CategoryEntity> List<S> findAll(Example<S> example);

	CategoryEntity getById(Integer id);

	void deleteAll();

	void deleteAll(Iterable<? extends CategoryEntity> entities);

	CategoryEntity getOne(Integer id);

	void delete(CategoryEntity entity);

	void deleteById(Integer id);

	long count();

	<S extends CategoryEntity> long count(Example<S> example);

	<S extends CategoryEntity> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends CategoryEntity> List<S> saveAll(Iterable<S> entities);

	Optional<CategoryEntity> findById(Integer id);

	List<CategoryEntity> findAllById(Iterable<Integer> ids);

	List<CategoryEntity> findAll(Sort sort);

	Page<CategoryEntity> findAll(Pageable pageable);

	List<CategoryEntity> findAll();

	public CategoryEntity editCategory(CategoryEntity category);

	<S extends CategoryEntity> S save(S entity);

	Page<CategoryEntity> findByKeywork(String keywork, Pageable pageable);

	CategoryEntity findById(int id);
	
	public List<CategoryEntity> getAllCategories();
	

}
