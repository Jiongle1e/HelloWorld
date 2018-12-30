package com.pj.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pj.pojo.Category;
import com.pj.service.CategoryService;

import com.pj.util.StringUtil;



@Controller
@RequestMapping("")
public class CategoryController {
	@Autowired
	CategoryService userService;
	
	//登陆页面
	@RequestMapping("index")
	public String index(){
		return "index";
	}
	
	//注册页面
	@RequestMapping("register")
	public String register(){
		return "register";
	}
	
	//注册
	@RequestMapping("addUser")
	public ModelAndView addUser(HttpServletRequest request,
			HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		Category user = userService.getUserByName(userName);
		if (user != null) {
			mav.addObject("error", "User has exist!");
			mav.setViewName("register");
			System.out.println("error");
			return mav;
		} else {
			int operateResult = userService.saveUser(userName, password);
			if (operateResult == 1) {

				mav.addObject("error", "registration success!");
			}
			mav.setViewName("register");
		}
		return mav;
	}
	
	//登陆
	@RequestMapping("login")
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		if (StringUtil.isEmpty(password) || StringUtil.isEmpty(userName)) {
			mav.addObject("error", "UserName or password is not enpty!");
			System.out.println("kong");
		}
		
		boolean flag = userService.checkUser(userName, password);
		if (flag) {
			List<Category> userList = userService.getAllUser();
			mav.addObject("userList", userList);
			System.out.println("success");
			mav.setViewName("home");
			return mav;

		} else {
			mav.addObject("error", "User message error!");
			System.out.println("error");
		}
		
		mav.setViewName("index");
		return mav;
	}

}
