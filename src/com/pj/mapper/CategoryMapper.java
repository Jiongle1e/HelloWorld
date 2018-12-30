package com.pj.mapper;
 
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pj.pojo.Category;
 
public interface CategoryMapper {
	
    public int addUser(@Param("userId") String userId,@Param("userName") String userName,@Param("password") String password);
      
	public Category findUserByName(String userName);
	
	public List<Category> getAllUser();
    
    
}