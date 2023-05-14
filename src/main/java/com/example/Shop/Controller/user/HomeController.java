package com.example.Shop.Controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.service.IProductService;

@Controller(value = "")
public class HomeController extends BaseController{
	
	@Autowired
	private IProductService productService;
	
	
	@RequestMapping(value = {"/index"}, method = RequestMethod.GET)
	public String home(final Model model) {
		
		
		List<ProductsEntity> list = productService.findProduct();
		model.addAttribute("product", list);
		List<ProductsEntity> list2 = productService.findAll();
		model.addAttribute("product1", list2);
		return "user/index";
	}
}
