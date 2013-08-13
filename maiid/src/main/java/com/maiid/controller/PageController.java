package com.maiid.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {

	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String home() {
		return "/WEB-INF/pages/index.jsp";
	}
	
	@RequestMapping(value="/artist", method=RequestMethod.GET)
	public String artist(){
		return "/WEB-INF/pages/artist/index.jsp";
	}
	
}
