package com.maiid.controller.webservice;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.maiid.rest.TagListResponse;

@Controller
public class TagController {
	
	@RequestMapping(value="/requestTagList", method=RequestMethod.GET)
	public @ResponseBody TagListResponse getTagList(){
		TagListResponse a = new TagListResponse();
		a.setTags(new ArrayList<String>());
		a.getTags().add("Height");
		a.getTags().add("Width");
		a.getTags().add("Hair Color");
		a.getTags().add("Eye Color");
		return a;
	}

}
