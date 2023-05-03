package com.example.Shop.Controller.user;

import java.io.IOException;
import java.sql.Date;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.Shop.entities.SaleOrderEntity;
import com.example.Shop.entities.SaleOrderProductsEntity;

import com.example.Shop.Controller.dto.Cart;
import com.example.Shop.Controller.dto.CartItem;
import com.example.Shop.entities.CategoryEntity;
import com.example.Shop.entities.ProductsEntity;
import com.example.Shop.service.ICategoryService;
import com.example.Shop.service.IProductService;
import com.example.Shop.service.impl.SaleOderService;

@Controller
public class CartController extends BaseController {
	// inject 1 bean vao 1 bean khac
	@Autowired
	private ICategoryService categoriesService;
	@Autowired
	private IProductService productService;

	@Autowired
	private SaleOderService saleOrderService;

//	@Autowired
//	private ISaleOderService saleorderService;

	@RequestMapping(value = { "/cart/checkout" }, method = RequestMethod.GET) // -> action
	public String checkoutView(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("totalprice", this.getTotalPrice(request));

		return "user/checkout"; // -> duong dan toi VIEW.
	}

	@RequestMapping(value = { "/pay" }, method = RequestMethod.POST, params = "thanhtoan1") // -> action
	public String checkoutViewpost(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {

		model.addAttribute("totalprice", this.getTotalPrice(request));

		// Lấy thông tin khách hàng
		String customerName = request.getParameter("customerName");
		String customerAddress = request.getParameter("customerAddress");
		String customerPhone = request.getParameter("customerPhone");
		String customerEmail = request.getParameter("customerEmail");

		// Tạo hóa đơn
		SaleOrderEntity saleOrderEntity = new SaleOrderEntity();
		saleOrderEntity.setCode(String.valueOf(System.currentTimeMillis()));
		saleOrderEntity.setCustomerName(customerName);
		saleOrderEntity.setCustomerAddress(customerAddress);
		saleOrderEntity.setCustomerPhone(customerPhone);
		saleOrderEntity.setCustomerEmail(customerEmail);
//		LocalDate date = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy MM dd");
//		  String text = date.format(formatter);
//		  Date date = new Date(System.currentTimeMillis());
		saleOrderEntity.setCreatedDate(new Date(System.currentTimeMillis()));
		saleOrderEntity.setTinhTrang("Chưa thanh toán");

		if (isLogined()) {
			saleOrderEntity.setUser(getUserLogined());
		}

		boolean flag = false;

		// Lấy thông tin giỏ hàng
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		for (CartItem cartItem : cart.getCartItems()) {
			ProductsEntity product = productService.getById(cartItem.getProductId());
			if (product.getSoLuongTon() < cartItem.getQuanlity()) {
				flag = true;
				break;
			}
			product.setSoLuongTon(product.getSoLuongTon() - cartItem.getQuanlity());
			SaleOrderProductsEntity saleOrderProductsEntity = new SaleOrderProductsEntity();
			saleOrderProductsEntity.setProduct(productService.getById(cartItem.getProductId()));
			saleOrderProductsEntity.setQuality(cartItem.getQuanlity());
			saleOrderProductsEntity.setCreatedDate(new Date(System.currentTimeMillis()));
			saleOrderEntity.addRelationProduct(saleOrderProductsEntity);

		}
		if (flag) {
			model.addAttribute("thongbao", "Lỗi đăt hàng do số lượng vượt quá số lượng còn có");
		} else {
			saleOrderService.saveSaleOder(saleOrderEntity);
			model.addAttribute("thongbao", "Cảm ơn bạn đã mua hàng");
			// Xóa dữ liệu giỏ hàng trong secction
			session.setAttribute("cart", null);
		}

		// Lưu vào CSDL

		return "user/checkout"; // -> duong dan toi VIEW.
	}

	@RequestMapping(value = { "/cart/view" }, method = RequestMethod.GET) // -> action
	public String cartView(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		model.addAttribute("totalprice", this.getTotalPrice(request));

		// Lấy danh sách categories
		List<CategoryEntity> categories = categoriesService.findAll();

		// Đẩy xuống tầng view
		model.addAttribute("categories", categories);

		return "user/cart"; // -> duong dan toi VIEW.
	}

	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;

		for (CartItem item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}

	private Double getTotalPrice(HttpServletRequest request) {

		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0d;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();
		Double totalPrice = 0d;
		for (CartItem item : cartItems) {
			totalPrice += item.getPriceUnit().doubleValue() * item.getQuanlity();
		}

		return totalPrice;
	}

	@RequestMapping(value = { "/cart/add" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addToCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem newItem) {

		// Section tương tự như kiểu map và được lưu trên main memory
		// Dữ liệu đã lưu trên session không cần gọi qua model mà có thể sử dụng trực
		// tiếp trên jsp
		HttpSession session = request.getSession();
//		String soLuongTon = request.getParameter("soluongton");
		// Lấy thông tin giỏ hàng
		Cart cart = null;
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();

		// Kiểm tra nếu có trong giỏ hàng thì tăng số lượng
		boolean isExists = false; // Không tồn tại
		for (CartItem item : cartItems) {
			if (item.getProductId() == newItem.getProductId()) {
				ProductsEntity productInDb = productService.getById(newItem.getProductId());
				isExists = true;
				if (productInDb.getSoLuongTon() < newItem.getQuanlity()) {
					item.setQuanlity(item.getQuanlity());
				} else {
					item.setQuanlity(item.getQuanlity() + newItem.getQuanlity());
				}
			}
		}

		// Nếu sản phẩm chưa có trong giỏ hàng
		if (!isExists) {
			ProductsEntity productInDb = productService.getById(newItem.getProductId());

			if (productInDb.getSoLuongTon() < newItem.getQuanlity()) {
				cart.getCartItems().isEmpty();
			} else {
				newItem.setProductName(productInDb.getTitle());
				newItem.setPriceUnit(productInDb.getPrice());
				newItem.setProductImage(productInDb.getAvatar());
				cart.getCartItems().add(newItem);
			}
		}

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		ProductsEntity productInDb = productService.getById(newItem.getProductId());
		if (productInDb.getSoLuongTon() < newItem.getQuanlity()) {
			jsonResult.put("message", "Lỗi số lượng bạn chọn nhiều hơn số lượng còn lại!");
//			session.setAttribute("cart", null);
			return ResponseEntity.ok(jsonResult);
		}

		// Trả kết quả
//		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("message", "Thêm vào giỏ hàng thành công!");
		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}

	@RequestMapping(value = { "/cart/finish" }, method = RequestMethod.POST)
	public String cartFinish(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@RequestBody CartItem cartItem) {

		// Lấy thông tin từ giỏ hàng
		HttpSession httpSession = request.getSession();
		return null;
	}

	@RequestMapping(value = { "/cart-delete" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteItemInCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem cartItem) {
		HttpSession httpSession = request.getSession();

		Cart cart = (Cart) httpSession.getAttribute("cart");

		List<CartItem> cartItems = cart.getCartItems();
		Double totalPrice = 0d;
//		Double totalPricePerProduct = 0d;
		for (int i = 0; i < cartItems.size(); i++) {
			if (cartItems.get(i).getProductId() == cartItem.getProductId()) {
				cartItems.remove(i);
				break;
			}
		}
		for (CartItem item : cartItems) {
			totalPrice += item.getPriceUnit().doubleValue();
		}
//		totalPricePerProduct = cartItem.getPriceUnit().doubleValue()*cartItem.getQuanlity();

		httpSession.setAttribute("totalItems", getTotalItems(request));
		httpSession.setAttribute("totalPrice", totalPrice);
//		httpSession.setAttribute("totalPricePerProduct", totalPricePerProduct);

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}

}
