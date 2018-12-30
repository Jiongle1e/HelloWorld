package com.pj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pj.mapper.CategoryMapper;
import com.pj.pojo.Category;
import com.pj.service.CategoryService;
import com.pj.util.UuId;


@Service
public class CategoryServiceImpl  implements CategoryService{
	@Autowired
	CategoryMapper dao;
	
	public int saveUser(String userName, String password){
		String userId=UuId.getUUID();
		return dao.addUser(userId,userName,password);
	}
	
	public boolean checkUser(String userName, String password) {
		Category user = getUserByName(userName);
		if (user != null && password.equals(user.getPassword())) {
			return true;
		} else {
			return false;
		}
	}
	
	public Category getUserByName(String userName) {
		return dao.findUserByName(userName);
	}

	public List<Category> getAllUser() {
		return dao.getAllUser();
	}
}
