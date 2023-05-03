package com.example.Shop.Controller.user;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.Shop.Controller.dto.SimpleContact;
import com.example.Shop.entities.ContactEntity;
import com.example.Shop.service.IContactService;
import com.example.Shop.service.impl.ContactService;

@Controller
public class ContactController extends BaseController{
	@Autowired
	private ContactService contactService;
	private SimpleContact getCleanSimpleContact() {
		SimpleContact contact = new SimpleContact();
		return contact;
	}
		
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final Model model, HttpServletRequest request) {
		model.addAttribute("contact", getCleanSimpleContact());
		return "user/contact";
	}

	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
	public String savecontact(final Model model, HttpServletRequest request,
			@ModelAttribute("contact") SimpleContact contact,
			@RequestParam("inputFile") MultipartFile[] inputFiles) throws IOException { // trùng name trong input
		// B1: Lay thong tin nguoi dung day len
		 String name = request.getParameter("txtName");
		String nameSpringForm = contact.getTxtName();
		// TODO-B2: Luu thong tin vao co so du lieu

		// B3: Hien thi thong bao cho nguoi dung
		model.addAttribute("message", "Cảm ơn " + nameSpringForm + " đã gửi liên hệ");
		
		model.addAttribute("contact", getCleanSimpleContact());
		// B4: Upload file
		return "user/contact";
	}


	@RequestMapping(value = { "/contact-ajax" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> contactAjax(final Model model, HttpServletRequest request,
			HttpServletResponse response,
			@RequestBody ContactEntity contact) throws Exception{

		System.out.println("Contact[Email]: " + contact.getEmail());
		Calendar cal = Calendar.getInstance(); 
		  Date ngay = cal.getTime();
		  contact.setCreatedDate(ngay); 
		  contact.setStatus(true);
		Map<String, Object> jsonResult = new HashMap<String, Object>();

		jsonResult.put("code", 200);
		jsonResult.put("message", contact);
		contactService.save(contact);
		model.addAttribute("contact", getCleanSimpleContact());
		return ResponseEntity.ok(jsonResult);
	}

}
