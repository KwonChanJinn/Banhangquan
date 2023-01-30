package com.news.user.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.ObjectIdGenerators.StringIdGenerator;
import com.news.constant.SESSION_ATTR;
import com.news.entity.User;
import com.news.request.UserRequest;
import com.news.service.CategoryService;
import com.news.service.OrderService;
import com.news.service.UserService;
import com.news.util.NewsUtil;

@Controller("UserOrderController")
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderService orderService;

	@Autowired
	private  CategoryService categoryService;
	
	@Autowired
	private UserService userService;

	@GetMapping("/user/history/{id}")
	public String viewDetail(Model model, HttpSession session, @PathVariable("id") int id) {
		if (!NewsUtil.isUserLogin(session)) {
			return "redirect:/signin";
		}
		model.addAttribute("item", orderService.findById(id));
	
		UserRequest user = (UserRequest) session.getAttribute(SESSION_ATTR.USER_SESSION);
		User us = userService.findByUsername(user.getUsername());
		model.addAttribute("itemus", us);
		model.addAttribute("orders", orderService.findAllByUserId(us.getId()));
		return "/user/account/order-history-detail";
	}
	
	@GetMapping("/history")
	public String products(Model model, HttpSession session) {
		if (!NewsUtil.isUserLogin(session)) {
			return "redirect:/signin";
		}
//		model.addAttribute("products", productService.findByProductName(productName));
		UserRequest user = (UserRequest) session.getAttribute(SESSION_ATTR.USER_SESSION);
		User us = userService.findByUsername(user.getUsername());
		model.addAttribute("categoriesMenu", categoryService.list());
		model.addAttribute("orders", orderService.findAllByUserId(us.getId()));
		return "user/account/order-history";
	}
	
	@GetMapping("/history/changepassword")
	public String products1(Model model, HttpSession session) {
		if (!NewsUtil.isUserLogin(session)) {
			return "redirect:/signin";
		}
//		model.addAttribute("products", productService.findByProductName(productName));
		UserRequest user = (UserRequest) session.getAttribute(SESSION_ATTR.USER_SESSION);
		User us = userService.findByUsername(user.getUsername());
		model.addAttribute("item", us);
		return "user/account/changepassword";
	}

	@PostMapping("/change-password/{id}")
	public String changePass(Model model, HttpServletRequest request, HttpSession session, @Valid User user, @PathVariable("id") int id) {
		if (!NewsUtil.isUserLogin(session)) {
			return "redirect:/signin";
		}
		UserRequest use = (UserRequest) session.getAttribute(SESSION_ATTR.USER_SESSION);
		User us = userService.findByUsername(user.getUsername());
		String pw = request.getParameter("password");
		String newpw = request.getParameter("newpassword");
		String repw = request.getParameter("renewpassword");
		if (!pw.equals(use.getPassword())) {
			model.addAttribute("errorMessage", "Mật khẩu cũ không đúng");
			model.addAttribute("item", us);
			return "user/account/changepassword";
		}
		if (!newpw.equals(repw)) {
			model.addAttribute("errorMessage", "Mật khẩu và nhập lai mật khẩu không giống nhau");
			model.addAttribute("item", us);
			
			return "user/account/changepassword";
		}
		User u = userService.findById(id);
		
		u.setPassword(BCrypt.hashpw(pw, BCrypt.gensalt(12)));
		userService.create(u);
		return "redirect:/";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(Model model, HttpSession session, @PathVariable("id") int id) {
		if (!NewsUtil.isUserLogin(session)) {
			return "redirect:/login";
		}
		orderService.delete(id);
	
		
//		model.addAttribute("products", productService.findByProductName(productName));
		UserRequest user = (UserRequest) session.getAttribute(SESSION_ATTR.USER_SESSION);
		User us = userService.findByUsername(user.getUsername());
		model.addAttribute("item", us);
		model.addAttribute("orders", orderService.findAllByUserId(us.getId()));
		return "/user/account/order-history";
	}
	
}