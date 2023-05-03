package com.example.Shop.Controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.Shop.entities.RoleEntity;
import com.example.Shop.entities.UserEntity;
import com.example.Shop.service.IUserService;




@Controller
public class LoginController extends BaseController {
	
	@Autowired
	private IUserService userService;
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET) // -> action
	public String login(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
			
		return "login2"; // -> duong dan toi VIEW.
	}
	@RequestMapping(value = { "/register" }, method = RequestMethod.GET) // -> action
	public String register(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
			
		model.addAttribute("regis", new UserEntity());
		
		return "register2"; // -> duong dan toi VIEW.
	}
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST) // -> action
	public String saveContact(@Valid @ModelAttribute("regis") UserEntity regis, BindingResult result, final Model model,
							  final HttpServletRequest request,
							  final HttpServletResponse response)
			throws IOException {
		//b1: lay thong tin nguoi dung day len
	//	String email = request.getParameter("txtEmail");
	//	String emailFromSpringForm = contact.getTxtEmail();
		if (result.hasErrors()) {
			System.out.println("False");
			return "register2";
		}
		String username = regis.getUsername();
		String password = regis.getPassword();
		String cfPassword = request.getParameter("cfpassword");
		if(password.compareTo(cfPassword) != 0) {
			model.addAttribute("loi","Mật khẩu và xác thực mật khẩu khác nhau");
			return "register2";
		}
//		String email = regis.getEmail();
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	    String encodedPassword = passwordEncoder.encode(regis.getPassword());
	    regis.setPassword(encodedPassword);
	    regis.setUsername(username);
	    RoleEntity role = new RoleEntity();
	    role.setName("GUEST");
	    role.setDescription("GUEST");
	    regis.addRoles(role);
	    //@SuppressWarnings("unchecked")
		UserEntity user = userService.findByusername(username);
	    if(user == null) {
	    	userService.save(regis);
			//b3: thong bao cho nguoi dung biet da luu thanh cong
			model.addAttribute("thongbao", "Đăng ký thành công");
	    	
	    }else {
	    	model.addAttribute("loi","Tài khoản đã tồn tại");
	    }
		//TODO b2: luu thong tin vao csdl
		
		
		//return "WEB-INF/views/user/home.jsp";
		return "register2"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/logout" }, method = RequestMethod.GET) // -> action
	public String logout(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
		model.addAttribute("userLogined", null);
		return "logout"; // -> duong dan toi VIEW.
	}
}
