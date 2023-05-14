package com.example.Shop.Controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.entities.ProductsImagesEntity;
import com.example.Shop.service.IProductService;
import com.example.Shop.service.IProductsImagesService;

@Controller
public class DetailController extends BaseController{
	@Autowired
	private IProductService productService;
	
	@Autowired
	private IProductsImagesService productImageService;
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detailProduct(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("id") Integer id) throws IOException {

		List<ProductsEntity> list2 = productService.findAll();
		model.addAttribute("listProduct", list2);
		/* ProductsEntity pro = productService.findById(id); */
		ProductsEntity pro = productService.findById2(id);
		model.addAttribute("product", pro);
		
		List<ProductsImagesEntity> list3 = productImageService.findByProductId2(id);
		model.addAttribute("listImage", list3);
		

		return "user/details"; // -> duong dan toi VIEW }

	}
}
