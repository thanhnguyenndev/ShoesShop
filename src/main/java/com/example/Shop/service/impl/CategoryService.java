package com.example.Shop.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.Shop.Controller.dto.Constant;
import com.example.Shop.entities.CategoryEntity;
import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.repository.CategoryRepository;
import com.example.Shop.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService,Constant {
	
	
	@Autowired
	CategoryRepository CategoryRepository;

	@Override
	public <S extends CategoryEntity> S save(S entity) {
		return CategoryRepository.save(entity);
	}

	@Override
	public List<CategoryEntity> findAll() {
		return CategoryRepository.findAll();
	}

	@Override
	public Page<CategoryEntity> findAll(Pageable pageable) {
		return CategoryRepository.findAll(pageable);
	}

	@Override
	public List<CategoryEntity> findAll(Sort sort) {
		return CategoryRepository.findAll(sort);
	}

	@Override
	public List<CategoryEntity> findAllById(Iterable<Integer> ids) {
		return CategoryRepository.findAllById(ids);
	}

	@Override
	public Optional<CategoryEntity> findById(Integer id) {
		return CategoryRepository.findById(id);
	}
	@Override
	public CategoryEntity findById(int id) {
		// TODO Auto-generated method stub
		return CategoryRepository.findById(id).get();
	}
	@Override
	public <S extends CategoryEntity> List<S> saveAll(Iterable<S> entities) {
		return CategoryRepository.saveAll(entities);
	}

	@Override
	public <S extends CategoryEntity> Page<S> findAll(Example<S> example, Pageable pageable) {
		return CategoryRepository.findAll(example, pageable);
	}

	@Override
	public <S extends CategoryEntity> long count(Example<S> example) {
		return CategoryRepository.count(example);
	}

	@Override
	public long count() {
		return CategoryRepository.count();
	}

	@Override
	public void deleteById(Integer id) {
		CategoryRepository.deleteById(id);
	}

	@Override
	public void delete(CategoryEntity entity) {
		CategoryRepository.delete(entity);
	}

	@Override
	public CategoryEntity getOne(Integer id) {
		return CategoryRepository.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends CategoryEntity> entities) {
		CategoryRepository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		CategoryRepository.deleteAll();
	}

	@Override
	public CategoryEntity getById(Integer id) {
		return CategoryRepository.getById(id);
	}

	@Override
	public Page<CategoryEntity> findByKeywork(String keywork, Pageable pageable) {
		return CategoryRepository.findByKeywork(keywork, pageable);
	}

	@Override
	public <S extends CategoryEntity> List<S> findAll(Example<S> example) {
		return CategoryRepository.findAll(example);
	}

	@Override
	public <S extends CategoryEntity> List<S> findAll(Example<S> example, Sort sort) {
		return CategoryRepository.findAll(example, sort);
	}
	@Override
	public CategoryEntity editCategory(CategoryEntity category) {
		// TODO Auto-generated method stub
		CategoryEntity cateOnDb = CategoryRepository.findById(category.getId()).get();
		return CategoryRepository.save(cateOnDb);
	}
	@Override
	public List<CategoryEntity> getAllCategories() {
		// TODO Auto-generated method stub
		return CategoryRepository.findByCategory();
	}
	
}
