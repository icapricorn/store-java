package com.chgenomics.store.dao;

import java.util.List;

import com.chgenomics.store.model.User;

public interface UserMapper {

	public int save(User user);
	
	public List<User> findAll();

	public User findById(int id);
	
	public int update(User user);
	
	public int destroy(int id);

}
