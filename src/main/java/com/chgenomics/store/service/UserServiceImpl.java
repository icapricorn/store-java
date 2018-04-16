package com.chgenomics.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chgenomics.store.dao.UserMapper;
import com.chgenomics.store.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	public List<User> findAll() {
		return userMapper.findAll();
	}

	public User findById(int id) {
		return userMapper.findById(id);
	}
}
