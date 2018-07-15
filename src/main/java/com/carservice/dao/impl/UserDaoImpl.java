package com.carservice.dao.impl;

import com.carservice.dao.UserDao;
import com.carservice.model.User;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;
	protected Session currentSession() {
		return sessionFactory.getCurrentSession();
	}
	@Transactional
	public void create(User user) {
		
		currentSession().save(user);
	}
	@Transactional
	public void update(User user) {
		
		currentSession().update(user);
	}
	@Transactional
	public User edit(int userId) {
		
		return find(userId);
	}
	@Transactional
	public void delete(int userId) {
		
		User user = new User();
		user.setUserId(userId);
		System.out.println("sgkh");
		currentSession().delete(user);
	}
	@Transactional
	public User find(int userId) {
		
		return (User)currentSession().get(User.class, userId);
	}

	@Transactional
	public List<User> getAll() {
		return currentSession().createCriteria(User.class).list();
	}

	
}
