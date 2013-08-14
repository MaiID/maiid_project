package com.maiid.controller.webservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.maiid.rest.webservice.GetSearchKeyResponse;
import com.maiid.rest.webservice.ResponseStatus;
import com.maiid.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	@Autowired
	private SearchService searchService;
	
	@RequestMapping(value = "/getSearchKey", method = RequestMethod.GET)
	@ResponseBody
	public GetSearchKeyResponse getKeyList() {
		GetSearchKeyResponse gskr = new GetSearchKeyResponse();
		gskr.setKeys(searchService.getSearchKeyList());
		gskr.setStatus(ResponseStatus.SUCCESS);
		return gskr;
	}

}
