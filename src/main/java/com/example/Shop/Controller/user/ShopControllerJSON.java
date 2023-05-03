package com.example.Shop.Controller.user;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.Shop.Controller.dto.SearchProduct;
import com.example.Shop.entities.CategoryEntity;
import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.service.ICategoryService;
import com.example.Shop.service.IProductService;
import com.example.Shop.type.SortFilter;

@RestController
@RequestMapping("/json/shop")
public class ShopControllerJSON {

	@Autowired
	private IProductService iProductService;
	@Autowired
	private ICategoryService categoryService;

//	@RequestMapping(value = "/search", method = RequestMethod.POST)
//	public Page<ProductsEntity> search(@ModelAttribute SearchProduct searchProduct, Model model) {
//		Page<ProductsEntity> productsEntities = iProductService.search(searchProduct);
//		return productsEntities;
//	}
	@RequestMapping(value = "/search",method = RequestMethod.GET)
	public String search(@ModelAttribute("searchProduct") SearchProduct searchProduct, Model model) {
		Integer page = searchProduct.getCurrentPage();
		int pagenumber = (page == null || page <= 0) ? 0 : page - 1;
		SortFilter sortFilter = new SortFilter(searchProduct.getSort());
		Page<ProductsEntity> productEntities = iProductService.findProductsByCriteria(
				PageRequest.of(pagenumber, 9, sortFilter.getSortType()), searchProduct.getPriceLow(),
				searchProduct.getPriceHigh(), searchProduct.getNameProduct(), searchProduct.getIdCategory());
		if (page > 0) {

			// Tính toán không làm giá trị âm hoặc vượt quá
			int start = Math.max(1, pagenumber - 2);
			int end = Math.min(pagenumber + 2, page);

			// Chuyển khoảng từ start tới end thành danh sách
			List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed().collect(Collectors.toList());

			// Tính số trang hiển thị trên view
			model.addAttribute("pageNumbers", pageNumbers);

			model.addAttribute("number", productEntities.getNumber());
			model.addAttribute("size", productEntities.getSize());
			model.addAttribute("totalElements", productEntities.getTotalElements());
			model.addAttribute("productPages", productEntities.getContent());

		}
		List<CategoryEntity> categories = categoryService.findAll();
		model.addAttribute("categories", categories);

		// Đẩy xuống tầng view
		model.addAttribute("productShop", productEntities);
		
		
		return "user/product";
	}
}
