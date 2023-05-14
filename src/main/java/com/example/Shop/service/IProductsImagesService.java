package com.example.Shop.service;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;

import com.example.Shop.entities.ProductsImagesEntity;

public interface IProductsImagesService {

	<S extends ProductsImagesEntity> List<S> findAll(Example<S> example);

	ProductsImagesEntity getById(Integer id);

	void deleteAll();

	void deleteAll(Iterable<? extends ProductsImagesEntity> entities);

	ProductsImagesEntity getOne(Integer id);

	void deleteAllById(Iterable<? extends Integer> ids);

	<S extends ProductsImagesEntity, R> R findBy(Example<S> example, Function<FetchableFluentQuery<S>, R> queryFunction);

	void delete(ProductsImagesEntity entity);

	void deleteAllByIdInBatch(Iterable<Integer> ids);

	void deleteById(Integer id);

	<S extends ProductsImagesEntity> long count(Example<S> example);

	void deleteInBatch(Iterable<ProductsImagesEntity> entities);

	<S extends ProductsImagesEntity> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends ProductsImagesEntity> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Integer id);

	<S extends ProductsImagesEntity> List<S> saveAll(Iterable<S> entities);

	Optional<ProductsImagesEntity> findById(Integer id);

	List<ProductsImagesEntity> findAllById(Iterable<Integer> ids);

	Page<ProductsImagesEntity> findAll(Pageable pageable);

	List<ProductsImagesEntity> findAll();

	<S extends ProductsImagesEntity> Optional<S> findOne(Example<S> example);

	<S extends ProductsImagesEntity> S save(S entity);

	List<ProductsImagesEntity> findByProductId2(int id);

}
