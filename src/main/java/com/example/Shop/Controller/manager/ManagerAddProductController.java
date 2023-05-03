package com.example.Shop.Controller.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.Shop.Controller.user.BaseController;
import com.example.Shop.entities.CategoryEntity;
import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.service.ICategoryService;
import com.example.Shop.service.impl.ProductService;

@Controller
public class ManagerAddProductController extends BaseController {

	@Autowired
	private ICategoryService categoryService;

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/admin/add-product", method = RequestMethod.GET)
	public String addProduct(final Model model, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("product") ProductsEntity product) {
		List<CategoryEntity> category = categoryService.findAll();
		model.addAttribute("categories", category);
		model.addAttribute("product", product);
		return "manager/add-product";

	}

	@RequestMapping(value = "/admin/edit-product/{productId}", method = RequestMethod.GET)
	public String editProduct(final Model model, HttpServletRequest request, HttpServletResponse response,

			@PathVariable("productId") int productId) throws Exception {

		ProductsEntity product = productService.getById(productId);

		List<CategoryEntity> category = categoryService.findAll();
		model.addAttribute("categories", category);
		model.addAttribute("product", product);
		return "manager/edit-product";
	}

	@RequestMapping(value = "/admin/edit-product/{productId}", method = RequestMethod.POST)
	public String editProduct(final Model model, HttpServletRequest request, HttpServletResponse response,

			@PathVariable("productId") int productId, @RequestParam("inputPictures") MultipartFile[] inputPictures,

			@RequestParam("inputAvatar") MultipartFile inputAvatar) throws Exception {

		ProductsEntity product = productService.getById(productId);

		List<CategoryEntity> category = categoryService.findAll();
		model.addAttribute("categories", category);
		model.addAttribute("product", product);

		productService.editProduct(product, inputAvatar, inputPictures);
		return "redirect:/admin/list-product";
	}

	@RequestMapping(value = "/admin/add-product", method = RequestMethod.POST)
	public String addProduct(final Model model, HttpServletRequest request, HttpServletResponse response,

			@ModelAttribute("product") ProductsEntity product,

			@RequestParam("inputPictures") MultipartFile[] inputPictures,

			@RequestParam("inputAvatar") MultipartFile inputAvatar) throws Exception {

		productService.addProduct(product, inputAvatar, inputPictures);
		return "redirect:/admin/list-product";
	}

	@RequestMapping(value = { "/admin/delete/{productId}" }, method = RequestMethod.GET) // -> action
	public String deleteProduct(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("productId") int productId) throws IOException {

		// Lấy sp từ db
		ProductsEntity product = productService.findById2(productId);
		productService.deleteById(productId);
		// Can lay danh sach category từ db và trả về view qua model

		// Đẩy dữ liệu xuống view thông qua thằng model

		return "redirect:/admin/list-product"; // -> duong dan toi VIEW.
	}

}
