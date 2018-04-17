package com.chgenomics.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chgenomics.store.model.User;
import com.chgenomics.store.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/users/create", method = RequestMethod.GET)
	public String create() {
		return "users/create";
	}

	@RequestMapping(value = "/users/create", method = RequestMethod.POST)
	public String save(User user) {
		if (userService.save(user)) {
			return "redirect:/users";
		} else {
			return "forward:/users/create";
		}
	}

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute(userService.findAll());
		return "users/index";
	}

	@RequestMapping(value = "/users/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable int id, Model model) {
		model.addAttribute(userService.findById(id));
		return "users/edit";
	}

	@RequestMapping(value = "/users/{id}/edit", method = RequestMethod.POST)
	public String update(User user) {
		if (userService.update(user)) {
			return "redirect:/users";
		}
		return "forward:/users/edit";
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.DELETE)
	public String destroy(@PathVariable int id) {

		if (userService.destroy(id)) {
			return "redirect:/users";
		}
		return "forward:/users/" + id;
	}

	// @RequestMapping(value = "/users/{id}", method = RequestMethod.GET)
	// public String user(@PathVariable int id,Model model) {
	// model.addAttribute(userService.findById(id));
	// return "users/user";
	// }
}
