package com.example.Shop.Controller.user;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.Shop.entities.UserEntity;

public class BaseController {

	// Kiểm tra đã login hay chưa
	@ModelAttribute("isLogined")
	public boolean isLogined() {
		boolean isLogined = false;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			isLogined = true;
		}
		return isLogined;
	}

	// Trả về thông tin của đối tượng User
	@ModelAttribute("userLogined")
	public UserEntity getUserLogined() {
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (userLogined != null && userLogined instanceof UserDetails)
			return (UserEntity) userLogined;

		return null;
	}

	@ModelAttribute("ProjectTitle")
	private String Title() {
		return "JavaWeb";
	}

	public int getCurrentPage(HttpServletRequest request) {
		try {
			return Integer.parseInt(request.getParameter("page")) - 1;
		} catch (Exception e) {
			return -1;
		}
	}

}
