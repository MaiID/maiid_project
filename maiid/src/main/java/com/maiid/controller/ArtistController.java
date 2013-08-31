package com.maiid.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.maiid.rest.ArtistLoginResponse;
import com.maiid.rest.ResponseStatus;

@Controller
@RequestMapping("/artist")
public class ArtistController {
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public @ResponseBody ArtistLoginResponse login(){
		ArtistLoginResponse response = new ArtistLoginResponse();
		response.setStatus(ResponseStatus.SUCCESS);
		return response;
	}
}
