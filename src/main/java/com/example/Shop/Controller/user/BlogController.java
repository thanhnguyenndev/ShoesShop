package com.example.Shop.Controller.user;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.Shop.entities.ProductsEntity;

@Controller
public class BlogController {
	@RequestMapping(value = {"/blog"}, method = RequestMethod.GET)
	public String home(final Model model) {
		
		return "user/blog";
	}
}
