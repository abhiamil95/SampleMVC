package com.sample.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String HomeMethod( ModelMap modal,Map<String,Object> map) {
		
		return "index";
		
	}
	@RequestMapping(value="/index1",method=RequestMethod.GET)
	public String HomeMethod2( ModelMap modal,Map<String,Object> map) {
		
		return "index";
		
	}
}
