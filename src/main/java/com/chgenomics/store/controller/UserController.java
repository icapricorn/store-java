package com.chgenomics.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chgenomics.store.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String users(ModelMap model) {
		model.addAttribute(userService.findAll());
		return "users/index";
	}
	
	@RequestMapping(value = "/users/{id}", method = RequestMethod.GET)
	public String user(@PathVariable int id,Model model) {
		model.addAttribute(userService.findById(id));
        return "users/user"; 
	}
}
