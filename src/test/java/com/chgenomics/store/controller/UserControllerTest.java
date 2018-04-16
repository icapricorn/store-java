package com.chgenomics.store.controller;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.ConcurrentModel;

import com.chgenomics.store.model.User;
import com.chgenomics.store.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml", "classpath:spring-mvc.xml" })
public class UserControllerTest {

	private static Logger logger = Logger.getLogger(UserControllerTest.class);

	@Autowired
	private UserController userController;

	@Autowired
	private UserService userService;

	@Test
	public void test() {
		User user = userService.findById(1);
		String view = userController.user(1, new ConcurrentModel());
		logger.info(user);
		logger.info(view);
	}

}
