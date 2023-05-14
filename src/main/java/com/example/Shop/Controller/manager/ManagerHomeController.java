package com.example.Shop.Controller.manager;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.Shop.Controller.user.BaseController;

@Controller
public class ManagerHomeController extends BaseController {
	@RequestMapping(value = {"/admin/index","/admin"}, method = RequestMethod.GET)
	public String index(final Model model) {
		return "manager/index";
	}
}
