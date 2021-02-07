package com.javahub.springboot.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/admin/product")
public class AdminProductPage {	

	/*
	 * @Autowired private AdminProductDao adminProductDao;
	 */
	
	@GetMapping("/show")
	public ModelAndView index(Model m) {
		/*
		 * List<AdminProduct> products = adminProductDao.getAllProducts();
		 * m.addAttribute("products", products);
		 */
		return new ModelAndView("user/product");
	}	
	
	
}
