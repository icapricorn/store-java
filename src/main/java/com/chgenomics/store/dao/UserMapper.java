package com.chgenomics.store.dao;

import java.util.List;

import com.chgenomics.store.model.User;

public interface UserMapper {

	public List<User> findAll();

	public User findById(int userId);

}
