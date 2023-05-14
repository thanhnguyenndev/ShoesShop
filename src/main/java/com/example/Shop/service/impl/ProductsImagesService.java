package com.example.Shop.service.impl;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.stereotype.Service;

import com.example.Shop.Controller.dto.Constant;
import com.example.Shop.entities.ProductsImagesEntity;
import com.example.Shop.repository.ProductImageRepository;
import com.example.Shop.service.IProductsImagesService;

@Service
public class ProductsImagesService implements IProductsImagesService,Constant {
	
	@Autowired
	private ProductImageRepository productimageRepo;

	@Override
	public <S extends ProductsImagesEntity> S save(S entity) {
		return productimageRepo.save(entity);
	}

	@Override
	public <S extends ProductsImagesEntity> Optional<S> findOne(Example<S> example) {
		return productimageRepo.findOne(example);
	}

	@Override
	public List<ProductsImagesEntity> findByProductId2(int id) {
		return productimageRepo.findByProductId2(id);
	}

	@Override
	public List<ProductsImagesEntity> findAll() {
		return productimageRepo.findAll();
	}

	@Override
	public Page<ProductsImagesEntity> findAll(Pageable pageable) {
		return productimageRepo.findAll(pageable);
	}

	@Override
	public List<ProductsImagesEntity> findAllById(Iterable<Integer> ids) {
		return productimageRepo.findAllById(ids);
	}

	@Override
	public Optional<ProductsImagesEntity> findById(Integer id) {
		return productimageRepo.findById(id);
	}

	@Override
	public <S extends ProductsImagesEntity> List<S> saveAll(Iterable<S> entities) {
		return productimageRepo.saveAll(entities);
	}

	@Override
	public boolean existsById(Integer id) {
		return productimageRepo.existsById(id);
	}

	@Override
	public <S extends ProductsImagesEntity> List<S> saveAllAndFlush(Iterable<S> entities) {
		return productimageRepo.saveAllAndFlush(entities);
	}

	@Override
	public <S extends ProductsImagesEntity> Page<S> findAll(Example<S> example, Pageable pageable) {
		return productimageRepo.findAll(example, pageable);
	}

	@SuppressWarnings("deprecation")
	@Override
	public void deleteInBatch(Iterable<ProductsImagesEntity> entities) {
		productimageRepo.deleteInBatch(entities);
	}

	@Override
	public <S extends ProductsImagesEntity> long count(Example<S> example) {
		return productimageRepo.count(example);
	}

	@Override
	public void deleteById(Integer id) {
		productimageRepo.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Integer> ids) {
		productimageRepo.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(ProductsImagesEntity entity) {
		productimageRepo.delete(entity);
	}

	@Override
	public <S extends ProductsImagesEntity, R> R findBy(Example<S> example,
			Function<FetchableFluentQuery<S>, R> queryFunction) {
		return productimageRepo.findBy(example, queryFunction);
	}

	@Override
	public void deleteAllById(Iterable<? extends Integer> ids) {
		productimageRepo.deleteAllById(ids);
	}

	@SuppressWarnings("deprecation")
	@Override
	public ProductsImagesEntity getOne(Integer id) {
		return productimageRepo.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends ProductsImagesEntity> entities) {
		productimageRepo.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		productimageRepo.deleteAll();
	}

	@SuppressWarnings("deprecation")
	@Override
	public ProductsImagesEntity getById(Integer id) {
		return productimageRepo.getById(id);
	}

	@Override
	public <S extends ProductsImagesEntity> List<S> findAll(Example<S> example) {
		return productimageRepo.findAll(example);
	}
	
	
}
