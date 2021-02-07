package com.javahub.springboot.controller;

/*import java.util.Map;*/

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/user")
public class UserController {
	
	/*
	 * @Autowired IUserService userService;
	 */
	@GetMapping("/create")
	public ModelAndView index() {
		return new ModelAndView("user/create");
	}
	
	@GetMapping("/show/{id}")
	public ModelAndView show(@PathVariable(value = "id") long id) {
		return new ModelAndView("admin/user/show");
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable(value = "id") long id) {
		return new ModelAndView("admin/user/edit");
	}
	
	@PostMapping("/update")
	public ModelAndView update(HttpServletRequest req) {
		return new ModelAndView("index");
	}

	
}
