package com.example.Shop.Controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.Shop.Controller.dto.ProductFilter;
import com.example.Shop.Controller.dto.SearchProduct;
import com.example.Shop.entities.CategoryEntity;
import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.service.ICategoryService;
import com.example.Shop.service.IProductService;
import com.example.Shop.type.SortFilter;
//import com.example.Shop.type.SortFilter;

@Controller
public class ShopController extends BaseController {
	@Autowired
	private IProductService productservice;
	// inject 1 bean vao 1 bean khac
	@Autowired
	private ICategoryService categoriesService;

	/*
	 * @RequestMapping(value = { "/shop" }, method = RequestMethod.GET) // -> action
	 * public String home(final ModelMap model, final HttpServletRequest request,
	 * final HttpServletResponse response) {
	 * 
	 * List<ProductsEntity> list = productservice.findProductShop();
	 * model.addAttribute("productShop", list);
	 * 
	 * return "user/shop"; // -> duong dan toi VIEW.
	 * 
	 * }
	 */

//	@RequestMapping(value = { "/shop" },method = RequestMethod.GET)
//	public String shop(@ModelAttribute("filter") ProductFilter filter, Model model) {
//		Integer page = filter.getPage();
//		int pageNumber = (page == null || page <= 0) ? 0 : page - 1;
//		SortFilter sortFilter = new SortFilter(filter.getSort());
//		Page<ProductsEntity> listSortedProduct = productservice.findArticlesByCriteria(
//				PageRequest.of(pageNumber, 9, sortFilter.getSortFilter()), filter.getPricelow(), filter.getPricehigh(),
//				filter.getCategory());
//		model.addAttribute("categories", categoriesService.getAllCategories());
//		model.addAttribute("productPages", listSortedProduct.getContent());
//		model.addAttribute("totalElements", listSortedProduct.getTotalElements());
//		model.addAttribute("itemsperpage", 9);
//		model.addAttribute("productShop", listSortedProduct);
//		return "user/product";
//	}

//	@RequestMapping(value = { "/shop" }, method = RequestMethod.GET) // -> action
//	public String search(final Model model, final HttpServletRequest request, final HttpServletResponse response,
//			@RequestParam(name = "keywork", required = false) String keywork,
//			@RequestParam("page") Optional<Integer> page,@ModelAttribute("searchProduct") SearchProduct searchProduct, @RequestParam("size") Optional<Integer> size) {
//
//		// Giá trị ngầm định là 1 khi không nhập
//		int currentPage = page.orElse(0);
//		// Gía trị ngầm định 9 giá trị trên 1 trnag
//		int pageSize = size.orElse(9);
//
//		SortFilter sortFilter = new SortFilter(searchProduct.getSort());
//		// Thực hiện sắp xếp theo title
//		Page<ProductsEntity> productEntities = productservice.findProductsByCriteria(
//				PageRequest.of(currentPage, pageSize, sortFilter.getSortType()), searchProduct.getPriceLow(),
//				searchProduct.getPriceHigh(), searchProduct.getNameProduct(), searchProduct.getIdCategory());
//		Pageable pageable = PageRequest.of(currentPage, pageSize, Sort.by("price").descending());
//
//		Page<ProductsEntity> resultPage = null;
//		Page<ProductsEntity> Pages = productservice.findAll(pageable);
//
//		if (StringUtils.hasText(keywork)) {
//			model.addAttribute("title", keywork);
//			resultPage = productservice.findByKeywork(keywork, pageable);
//		} else {
//			resultPage = productservice.findAll(pageable);
//		}
//		
//		//sắp xếp theo khoảng giá,a-z
//		
//		int totalPages = resultPage.getTotalPages();
//		if (totalPages > 0) {
//
//			// Tính toán không làm giá trị âm hoặc vượt quá
//			int start = Math.max(1, currentPage - 2);
//			int end = Math.min(currentPage + 2, totalPages);
//
//			/*
//			 * if(totalPages > 5) { if(end == totalPages) start = end -5; else if(start == 1
//			 * ) end = start + 5; }
//			 */
//
//			// Chuyển khoảng từ start tới end thành danh sách
//			List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed().collect(Collectors.toList());
//
//			// Tính số trang hiển thị trên view
//			model.addAttribute("pageNumbers", pageNumbers);
//
//			model.addAttribute("number", productEntities.getNumber());
//			model.addAttribute("size", productEntities.getSize());
//			model.addAttribute("totalElements", productEntities.getTotalElements());
//			model.addAttribute("productPages", productEntities.getContent());
//
//		}
//		// Lấy danh sách categories
//		List<CategoryEntity> categories = categoriesService.findAll();
//
//		// Đẩy xuống tầng view
//		model.addAttribute("categories", categories);
//
//		// Đẩy xuống tầng view
//		model.addAttribute("productShop", productEntities);
//
//		return "user/product"; // -> duong dan toi VIEW.
//	}

	@RequestMapping(value = { "/shop" }, method = RequestMethod.GET) // -> action
	public String search(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@RequestParam(name = "keywork", required = false) String keywork,
			@RequestParam("page") Optional<Integer> page, @RequestParam("size") Optional<Integer> size) {

		// Giá trị ngầm định là 1 khi không nhập
		int currentPage = page.orElse(0);
		// Gía trị ngầm định 9 giá trị trên 1 trnag
		int pageSize = size.orElse(9);

		
		// Thực hiện sắp xếp theo title
		
		Pageable pageable = PageRequest.of(currentPage, pageSize, Sort.by("price").descending());

		Page<ProductsEntity> resultPage = null;
		Page<ProductsEntity> Pages = productservice.findAll(pageable);

		if (StringUtils.hasText(keywork)) {
			model.addAttribute("title", keywork);
			resultPage = productservice.findByKeywork(keywork, pageable);
		} else {
			resultPage = productservice.findAll(pageable);
		}
		
		//sắp xếp theo khoảng giá,a-z
		
		int totalPages = resultPage.getTotalPages();
		if (totalPages > 0) {

			// Tính toán không làm giá trị âm hoặc vượt quá
			int start = Math.max(1, currentPage - 2);
			int end = Math.min(currentPage + 2, totalPages);

			/*
			 * if(totalPages > 5) { if(end == totalPages) start = end -5; else if(start == 1
			 * ) end = start + 5; }
			 */

			// Chuyển khoảng từ start tới end thành danh sách
			List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed().collect(Collectors.toList());

			// Tính số trang hiển thị trên view
			model.addAttribute("pageNumbers", pageNumbers);

			model.addAttribute("number", resultPage.getNumber());
			model.addAttribute("size", resultPage.getSize());
			model.addAttribute("totalElements", resultPage.getTotalElements());
			model.addAttribute("productPages", resultPage.getContent());

		}
		// Lấy danh sách categories
		List<CategoryEntity> categories = categoriesService.findAll();

		// Đẩy xuống tầng view
		model.addAttribute("categories", categories);

		// Đẩy xuống tầng view
		model.addAttribute("productShop", resultPage);

		return "user/product"; // -> duong dan toi VIEW.
	}
//	@RequestMapping(value = { "/searchByAjax" }, method = RequestMethod.GET) // -> action
//	public ResponseEntity<Map<String, Object>> phanTrang(final ModelMap model, final HttpServletRequest request,
//			final HttpServletResponse response) throws IOException {
//		response.setContentType("text/html;charset=UTF-8");
//		request.setCharacterEncoding("UTF-8");
//		String txtSearch = request.getParameter("txt");
//
//		List<ProductsEntity> list = productservice.findByKeyword(txtSearch);
//		String html = "";
//		for (ProductsEntity o : list) {
//			html += "<div class=\"col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12\">\n"
//					+ "												<div class=\"best-slice__card\" data-aos=\"fade-up\"\n"
//					+ "													data-aos-delay=\"0\">\n"
//					+ "													<div class=\"best-slice__photo\">\n"
//					+ "														<a href=\"" + o.getId() + "\"><img\n"
//					+ "															src=\"" + o.getAvatar() + "\"\n"
//					+ "															alt=\"./img/banh-hamburger\" title=\"Bánh Hamburger\" /></a>\n"
//					+ "													</div>\n"
//					+ "													<div class=\"best-slice__content\">\n"
//					+ "														<a href=\"" + o.getId() + "\">\n"
//					+ "															<h3 class=\"best-slice__heading\">"
//					+ o.getTitle() + "\"</h3>\n" + "														</a>\n"
//					+ "														<div class=\"best-slice__rate\">\n"
//					+ "															<i class=\"fas fa-star\"></i><i class=\"fas fa-star\"></i><i\n"
//					+ "																class=\"fas fa-star\"></i><i class=\"fas fa-star\"></i><i\n"
//					+ "																class=\"fas fa-star\"></i>\n"
//					+ "														</div>\n"
//					+ "														<div class=\"best-slice__price\">+"
//					+ o.getPrice() + "\"</div>\n"
//					+ "														<button class=\"btn btn--red btn--transtion\"\n"
//					+ "															onclick=\"addToCart(" + o.getId()
//					+ "\",1)\">\n"
//					+ "															<span>Thêm Vào Giỏ</span><i class=\"fas fa-cart-plus\"></i>\n"
//					+ "														</button>\n"
//					+ "													</div>\n"
//					+ "												</div>\n"
//					+ "											</div>";
//		}
//
//		// System.out.println(request.getParameter("min-price"));
//		// trả kết quả
//		Map<String, Object> jsonResult = new HashMap<String, Object>();
//		jsonResult.put("code", 200);
//		jsonResult.put("status", "TC");
//		jsonResult.put("html", html);
////				jsonResult.put("totalPrice", getTotalPrice(request));
//		//
////				session.setAttribute("totalItems", getTotalItems(request));
////				session.setAttribute("totalPrice", getTotalPrice(request));
////				//System.out.println(getTotalPrice(request));
//		return ResponseEntity.ok(jsonResult);
//	}

}
