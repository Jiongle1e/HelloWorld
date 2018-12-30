package com.pj.service;

import java.util.List;

import com.pj.pojo.Category;

public interface CategoryService {
	
	int saveUser(String userName, String password);
	
	boolean checkUser(String userName, String password);

	Category getUserByName(String userName);
	
	List<Category> getAllUser();
}
