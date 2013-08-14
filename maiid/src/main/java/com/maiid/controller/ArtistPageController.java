package com.maiid.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.maiid.model.Artist;
import com.maiid.rest.HomeRequest;
import com.maiid.rest.LoginRequest;
import com.maiid.service.ArtistService;

@Controller
@RequestMapping("/artist")
public class ArtistPageController {

	private Logger logger = Logger.getLogger(ArtistPageController.class);

	@Autowired
	private ArtistService artistService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpSession session,
			@ModelAttribute LoginRequest request, Model model) {
		Artist artist = artistService.artistLogin(request.getEmail(),
				request.getPassword());
		if (artist != null) {
			session.setAttribute("MAIID_ARTIST", artist);
			logger.info("Artist login : " + artist.getEmail());
			return "forward:/artist/home";
		}
		return "forward:/artist/home?message=login_incorrect";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("MAIID_ARTIST");
		return "forward:/artist/home";
	}

	@RequestMapping(value = "/home")
	public String artist(HttpSession session, Model model,
			@ModelAttribute HomeRequest request) {
		if (session.getAttribute("MAIID_ARTIST") == null
				|| "".equals(session.getAttribute("MAIID_ARTIST"))) {
			if(request.getMessage() != null){
				model.addAttribute("message", "Login incorrect! Please try again!");
			}
			return "/WEB-INF/pages/artist/login.jsp";
		} else {
			model.addAttribute("artist",
					(Artist) session.getAttribute("MAIID_ARTIST"));
			return "/WEB-INF/pages/artist/index.jsp";
		}
	}

}
