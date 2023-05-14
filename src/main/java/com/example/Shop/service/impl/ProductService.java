package com.example.Shop.service.impl;

import java.io.File;
import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import com.example.Shop.Controller.dto.ProductsSpecifications;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.Shop.Controller.dto.Constant;
import com.example.Shop.Controller.dto.SearchProduct;
import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.entities.ProductsImagesEntity;
import com.example.Shop.repository.ProductRepository;
import com.example.Shop.service.IProductService;

@Service
public class ProductService implements IProductService, Constant {

	@Autowired
	ProductRepository productRepo;

	public void deleteAllById(Iterable<? extends Integer> integers) {
		productRepo.deleteAllById(integers);
	}

	@Override
	public <S extends ProductsEntity> S save(S entity) {
		return productRepo.save(entity);
	}

	@Override
	public Page<ProductsEntity> ProductShop(Pageable pageable) {
		return productRepo.ProductShop(pageable);
	}

	@Override
	public List<ProductsEntity> findProduct() {
		return productRepo.findProduct();
	}

	@Override
	public List<ProductsEntity> findProductShop() {
		return productRepo.findProductShop();
	}

	@Override
	public Page<ProductsEntity> findByKeywordd(String keywork, Pageable pageable) {
		return productRepo.findByKeywork(keywork, pageable);
	}

	@Override
	public Page<ProductsEntity> findAll(String keywork, Pageable pageable) {
		return productRepo.findAll(keywork, pageable);
	}

	@Override
	public List<ProductsEntity> findAll() {
		return productRepo.findAll();
	}

	@Override
	public Page<ProductsEntity> findByTitle(String title, Pageable pageable) {
		return productRepo.findByTitle(title, pageable);
	}

	@Override
	public Page<ProductsEntity> findAll(Pageable pageable) {
		return productRepo.findAll(pageable);
	}

	@Override
	public List<ProductsEntity> findAll(Sort sort) {
		return productRepo.findAll(sort);
	}

	@Override
	public List<ProductsEntity> findAllById(Iterable<Integer> ids) {
		return productRepo.findAllById(ids);
	}

	@Override
	public ProductsEntity findById2(int id) {
		// TODO Auto-generated method stub
		return productRepo.findById(id).get();
	}

	@Override
	public Optional<ProductsEntity> findById(Integer id) {
		return productRepo.findById(id);
	}

	@Override
	public <S extends ProductsEntity> List<S> saveAll(Iterable<S> entities) {
		return productRepo.saveAll(entities);
	}

	@Override
	public <S extends ProductsEntity> Page<S> findAll(Example<S> example, Pageable pageable) {
		return productRepo.findAll(example, pageable);
	}

	@Override
	public void deleteById(Integer id) {
		productRepo.deleteById(id);
	}

	@Override
	public void delete(ProductsEntity entity) {
		productRepo.delete(entity);
	}

	@Override
	public void deleteAll() {
		productRepo.deleteAll();
	}

	@SuppressWarnings("deprecation")
	@Override
	public ProductsEntity getById(Integer id) {
		return productRepo.getById(id);
	}

	@Override
	public <S extends ProductsEntity> List<S> findAll(Example<S> example, Sort sort) {
		return productRepo.findAll(example, sort);
	}

	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;

		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;

		return false;
	}

	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}

	@Override
	public ProductsEntity addProduct(ProductsEntity product, MultipartFile inputAvatar, MultipartFile[] inputPictures)
			throws Exception {
		if (!isEmptyUploadFile(inputAvatar)) {
			String pathToFile = UPLOAD_FILE_ROOT + "/product/avatar/"

					+ inputAvatar.getOriginalFilename();
			inputAvatar.transferTo(new File(pathToFile));
			product.setAvatar("product/avatar/" + inputAvatar.getOriginalFilename());
		}

		// product imgages
		// có đẩy pictures ???
		if (!isEmptyUploadFile(inputPictures)) {
			String pathToFile = UPLOAD_FILE_ROOT + "/product/pictures/";

			for (MultipartFile pic : inputPictures) {
				pic.transferTo(new File(pathToFile + pic.getOriginalFilename()));

				ProductsImagesEntity pi = new ProductsImagesEntity();
				pi.setPath("product/pictures/" + pic.getOriginalFilename());
				pi.setTitle(pic.getOriginalFilename());

				product.addRelationProduct(pi);
			}
		}
		return productRepo.save(product);
	}

	public ProductsEntity editProduct(ProductsEntity product, MultipartFile productAvatar,
			MultipartFile[] productImages) throws Exception {
		// Có đẩy avatar lên không
		// lay thong tin san pham trong db.
		ProductsEntity productOnDb = productRepo.findById(product.getId()).get();

		// có đẩy avartar ???
		if (!isEmptyUploadFile(productAvatar)) {
			// xóa avatar trong folder lên
			new File(UPLOAD_FILE_ROOT + productOnDb.getAvatar()).delete();

			// add avartar moi
			productAvatar.transferTo(
					new File(UPLOAD_FILE_ROOT + "\\product\\avatar\\" + productAvatar.getOriginalFilename()));
			product.setAvatar("/product/avatar/" + productAvatar.getOriginalFilename());
		} else {
			// su dung lai avatar cu
			product.setAvatar(productOnDb.getAvatar());
		}

		// có đẩy pictures ???
		if (!isEmptyUploadFile(productImages)) {

			for (MultipartFile pic : productImages) {
				pic.transferTo(new File(UPLOAD_FILE_ROOT + "\\product\\pictures\\" + pic.getOriginalFilename()));

				ProductsImagesEntity pi = new ProductsImagesEntity();
				pi.setPath("/product/pictures/" + pic.getOriginalFilename());
				pi.setTitle(pic.getOriginalFilename());

				product.addRelationProduct(pi);
			}
		}

		return productRepo.save(product);
	}

	@Override
	public List<ProductsEntity> findByKeyword(String keywork) {
		// TODO Auto-generated method stub
		return productRepo.findByKeyword(keywork);
	}


	@Override
	public Page<ProductsEntity> search(SearchProduct searchProduct) {
		int currentPage = searchProduct.getCurrentPage();
		int sizeOfPage = 9;
		String sortBy = searchProduct.getSortBy();
		List<Integer> categoryIds = searchProduct.getIdCategory();
		String nameProduct = searchProduct.getNameProduct();
		Float productPrice = searchProduct.getPrice();
		Sort sort = null;
		if (sortBy.equals("az")) {
			sort = Sort.by(Order.asc("title"));
		} else if (sortBy.equals("za")) {
			sort = Sort.by(Order.desc("title"));
		} else if (sortBy.equals("lowHigh")) {
			sort = Sort.by(Order.asc("price"));
		} else if (sortBy.equals("highLow")) {
			sort = Sort.by(Order.desc("price"));
		} else {
			sort = Sort.unsorted();
		}

		Specification<ProductsEntity> specificationCategory = (root, query, criteriaBuilder) -> {
			if (categoryIds != null && !categoryIds.isEmpty()) {
				return criteriaBuilder.and(root.get("categoryId").in(categoryIds));
			}
			return null;
		};

		Specification<ProductsEntity> specificationNameProduct = (root, query, criteriaBuilder) -> {
			if (nameProduct != null && !nameProduct.isEmpty()) {
				return criteriaBuilder.like(root.get("title"), "%" + nameProduct + "%");
			}
			return null;
		};
		
		Specification<ProductsEntity> specificationPrice = (root, query, criteriaBuilder) -> {
			if (productPrice != null && (productPrice < 1000000)) {
				return criteriaBuilder.lessThan(root.get("price"), 1000000);
			} else if (productPrice != null && (productPrice >= 1000000) && productPrice < 3000000) {
				return criteriaBuilder.between(root.get("price"),
						criteriaBuilder.greaterThan(root.get("price"), 1000000),
						criteriaBuilder.lessThan(root.get("price"), 3000000));
			} else if (productPrice != null && (productPrice >= 3000000) && productPrice <= 5000000) {
				return criteriaBuilder.between(root.get("price"),
						criteriaBuilder.greaterThan(root.get("price"), 3000000),
						criteriaBuilder.lessThan(root.get("price"), 5000000));
			} else if (productPrice != null && (productPrice >= 1000000) && productPrice < 3000000) {
				return criteriaBuilder.greaterThan(root.get("price"), 5000000);
			}
			return null;
		};

		Specification<ProductsEntity> specification = Specification.where(specificationCategory);

		if (specificationNameProduct != null && specificationPrice!=null) {
			specification.and(specificationNameProduct).and(specificationPrice);
		}

		Pageable pageable = PageRequest.of(currentPage, sizeOfPage, sort);
		return productRepo.findAll(specification, pageable);
	}

	@Override
	public Page<ProductsEntity> findByCategoryId(Long categoryId, Pageable pageable) {
		return productRepo.findByCategoryId(categoryId, pageable);
	}


	@Override
	public Page<ProductsEntity> findByPriceRange(String priceRange, Pageable pageable) {
		if (!priceRange.matches("^\\d+(\\.\\d+)?-\\d+(\\.\\d+)?$")) {
			throw new IllegalArgumentException("Invalid price range format: " + priceRange);
		}

		String[] prices = priceRange.split("-");
		BigDecimal priceLow = new BigDecimal(prices[0]);
		BigDecimal priceHigh = new BigDecimal(prices[1]);
		return productRepo.findByPriceBetween(priceLow, priceHigh, pageable);
	}


	@Override
	public Page<ProductsEntity> findByCategoryAndPriceRange(Integer categoryId, String priceRange, Pageable pageable) {
		String[] prices = priceRange.split("-");
		BigDecimal priceLow = new BigDecimal(prices[0]);
		BigDecimal priceHigh = new BigDecimal(prices[1]);
		return productRepo.findByCategoryIdAndPriceBetween(categoryId, priceLow, priceHigh, pageable);
	}
	@Override
	public Page<ProductsEntity> searchProducts(Integer categoryId, String priceRange, Pageable pageable) {
		Specification<ProductsEntity> spec = Specification.where(null);
		if (categoryId != null) {
			spec = spec.and(ProductsSpecifications.hasCategoryId(categoryId));
		}
		if (priceRange != null) {
			switch (priceRange) {
				case "duoi1m":
					spec = spec.and(ProductsSpecifications.hasPriceLessThan(1000000L));
					break;
				case "tu1mden3m":
					spec = spec.and(ProductsSpecifications.hasPriceBetween(1000000L, 3000000L));
					break;
				case "tu3mden5m":
					spec = spec.and(ProductsSpecifications.hasPriceBetween(3000000L, 5000000L));
					break;
				case "tren5m":
					spec = spec.and(ProductsSpecifications.hasPriceGreaterThan(5000000L));
					break;
				default:
					break;
			}
		}
		return productRepo.findAll(spec, pageable);
	}
}
