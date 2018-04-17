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

	public boolean save(User user) {
		boolean save = false;
		int count = userMapper.save(user);
		if (count > 0) {
			save = true;
		}
		return save;
	}

	public List<User> findAll() {
		return userMapper.findAll();
	}

	public User findById(int id) {
		return userMapper.findById(id);
	}

	public boolean update(User user) {
		boolean update = false;
		int count = userMapper.update(user);
		if (count > 0) {
			update = true;
		}
		return update;
	}

	public boolean destroy(int id) {
		boolean destroy = false;
		int count = userMapper.destroy(id);
		if (count > 0) {
			destroy = true;
		}
		return destroy;
	}
}
