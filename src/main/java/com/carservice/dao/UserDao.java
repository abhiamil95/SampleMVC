package com.carservice.dao;

import java.util.List;

import com.carservice.model.User;

public interface  UserDao  {

	public void create(User user);
	public void update(User user);
	public User edit(int userId);
	public void delete(int userId);
	public User find(int userId);
	public List <User> getAll();
}
