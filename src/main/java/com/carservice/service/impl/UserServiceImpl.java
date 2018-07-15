package com.carservice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.carservice.dao.UserDao;
import com.carservice.model.User;
import com.carservice.service.UserService;

@Service("userService")
@Transactional(propagation = Propagation.SUPPORTS,rollbackFor=Exception.class)
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao; //reference name should be same with UserDaoImpl Repositry annotation

	public void create(User user) {
		userDao.create(user);
	}

	public void update(User user) {
		userDao.update(user);
	}

	public User edit(int userId) {
		
		return userDao.edit(userId);
	}

	public void delete(int userId) {
		
		userDao.delete(userId);
	}

	public User find(int userId) {
		
		return userDao.find(userId);
	}

	public List<User> getAll() {
		
		return userDao.getAll();
	}
}
