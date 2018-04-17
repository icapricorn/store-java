package com.chgenomics.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chgenomics.store.model.User;
import com.chgenomics.store.service.UserService;

@Controller
@RequestMapping(value = "/users")
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping(value = "/create")
	public String create() {
		return "users/create";
	}

	@PostMapping(value = "/create")
	public String save(User user) {
		if (userService.save(user)) {
			return "redirect:/users";
		} else {
			return "forward:/users/create";
		}
	}

	@GetMapping
	public String index(ModelMap model) {
		model.addAttribute(userService.findAll());
		return "users/index";
	}

	@GetMapping(value = "/{id}/edit")
	public String edit(@PathVariable int id, Model model) {
		model.addAttribute(userService.findById(id));
		return "users/edit";
	}

	@PostMapping(value = "/{id}/edit")
	public String update(User user) {
		if (userService.update(user)) {
			return "redirect:/users";
		}
		return "forward:/users/edit";
	}

	@DeleteMapping(value = "/{id}")
	public String destroy(@PathVariable int id) {
		if (userService.destroy(id)) {
			return "redirect:/users";
		}
		return "forward:/users/" + id;
	}
}
