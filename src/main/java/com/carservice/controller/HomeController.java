package com.carservice.controller;

import java.util.Map;

import com.carservice.model.User;
import com.carservice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@Autowired
	UserService userService;
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String HomeMethod( ModelMap modal,Map<String,Object> map) {
		
		return "index";
		
	}
	@RequestMapping(value="/index1",method=RequestMethod.GET)
	public String HomeMethod2( ModelMap modal,Map<String,Object> map) {
		map.put("user", new User());
		return "register";
		
	}
	@InitBinder
	public void intDate(WebDataBinder dataBinder){
	    dataBinder.addCustomFormatter(new DateFormatter("DD-MM-YYYY"));
	}
	@RequestMapping(value="/Register",method=RequestMethod.POST)
	public String create( Map<String,Object> map,@ModelAttribute("user") User user) {
	
		//to avoid multiple submissions
		System.out.println("End Register"+user);
		userService.create(user);
		System.out.println("Name:"+user.getName());
		System.out.println("Username:"+user.getUsername());
		System.out.println("password:"+user.getPassword());
		System.out.println("DOB:"+user.getDob());
		System.out.println("gender:"+user.getGender());
		//return "redirect:/details/"+ user.getUserId();
		return "redirect: index1";
	}
}
