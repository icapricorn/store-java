package com.chgenomics.store.service;

import java.util.List;

import com.chgenomics.store.model.User;

public interface UserService {

	public List<User> findAll();

	public User findById(int id);
}
