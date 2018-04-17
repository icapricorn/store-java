package com.chgenomics.store.service;

import java.util.List;

import com.chgenomics.store.model.User;

public interface UserService {
	
	public boolean save(User user);

	public List<User> findAll();

	public User findById(int id);
	
	public boolean update(User user);
	
	public boolean destroy(int id);
}
