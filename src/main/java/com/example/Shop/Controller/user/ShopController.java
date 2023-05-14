package com.example.Shop.Controller.user;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import com.example.Shop.service.impl.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Shop.entities.CategoryEntity;
import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.service.ICategoryService;
import com.example.Shop.service.IProductService;

@Controller
public class ShopController extends BaseController {
	@Autowired
	private IProductService productservice;
	// inject 1 bean vao 1 bean khac
	@Autowired
	private ICategoryService categoriesService;

	@Autowired
	private ProductService productServices;

	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public String search(@RequestParam(name = "sort", defaultValue = "default") String sort,
			@RequestParam(name = "keyword", required = false) String keyword,
			@RequestParam(name = "page", defaultValue = "0") int page,
			@RequestParam(name = "size", defaultValue = "9") int size,
			@RequestParam(name = "categoryId", required = false) Integer categoryId,
			@RequestParam(name = "priceRange", required = false) String priceRange, Model model) {
		Pageable pageable = PageRequest.of(page, size, Sort.by("id").descending());
		Page<ProductsEntity> resultPage;

		switch (sort) {
		case "az":
			pageable = PageRequest.of(page, size, Sort.by("title").ascending());
			break;
		case "za":
			pageable = PageRequest.of(page, size, Sort.by("title").descending());
			break;
		case "lowHigh":
			pageable = PageRequest.of(page, size, Sort.by("price").ascending());
			break;
		case "highLow":
			pageable = PageRequest.of(page, size, Sort.by("price").descending());
			break;
		default:
			pageable = PageRequest.of(page, size, Sort.by("id").descending());
			break;
		}
		
		if (categoryId != null || priceRange != null) {
			resultPage = productServices.searchProducts(categoryId, priceRange, pageable);
		} else {
			if (StringUtils.hasText(keyword)) {
				model.addAttribute("title", keyword);
				resultPage = productServices.findByKeywordd(keyword, pageable);
			} else {
				resultPage = productservice.findAll(pageable);
			}
		}

		int totalPages = resultPage.getTotalPages();

		if (totalPages > 0) {
			int start = Math.max(1, page - 2);
			int end = Math.min(page + 2, totalPages);

			List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed().collect(Collectors.toList());

			model.addAttribute("pageNumbers", pageNumbers);
			model.addAttribute("number", resultPage.getNumber());
			model.addAttribute("size", resultPage.getSize());
			model.addAttribute("totalElements", resultPage.getTotalElements());
			model.addAttribute("productPages", resultPage.getContent());
		}

		List<CategoryEntity> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
		model.addAttribute("productShop", resultPage);

		return "user/product";
	}

}
