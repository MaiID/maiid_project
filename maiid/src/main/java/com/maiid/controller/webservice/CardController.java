package com.maiid.controller.webservice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.maiid.model.BlockDetails;
import com.maiid.model.CardListItem;
import com.maiid.model.CardTemplateDetails;
import com.maiid.model.CustomerContentBlockDetails;
import com.maiid.model.CustomerContentDetails;
import com.maiid.rest.webservice.GetCardDetailsRequest;
import com.maiid.rest.webservice.GetCardDetailsResponse;
import com.maiid.rest.webservice.GetCustomerCardListRequest;
import com.maiid.rest.webservice.GetCustomerCardListResponse;
import com.maiid.rest.webservice.ResponseStatus;

@Controller
@RequestMapping("/card")
public class CardController {

	@RequestMapping(value = "/getCustomerCardList", method = RequestMethod.GET)
	@ResponseBody
	public GetCustomerCardListResponse getCard(
			@ModelAttribute GetCustomerCardListRequest request) {
		GetCustomerCardListResponse gcr = new GetCustomerCardListResponse();
		List<CardListItem> cards = new ArrayList<CardListItem>();
		cards
				.add(new CardListItem(1, "Title 1", "02-02-1999",
						"http://alterralearning.com/wp-content/uploads/2012/12/demo-logo-large.png"));
		cards
				.add(new CardListItem(2, "Title 2", "03-04-2000",
						"http://alterralearning.com/wp-content/uploads/2012/12/demo-logo-large.png"));
		cards
				.add(new CardListItem(3, "Title 3", "06-03-2010",
						"http://alterralearning.com/wp-content/uploads/2012/12/demo-logo-large.png"));
		cards
				.add(new CardListItem(4, "Title 4", "02-05-2011",
						"http://alterralearning.com/wp-content/uploads/2012/12/demo-logo-large.png"));
		gcr.setCards(cards);
		gcr.setStatus(ResponseStatus.SUCCESS);
		return gcr;
	}

	@RequestMapping(value = "/getCardDetails", method = RequestMethod.GET)
	@ResponseBody
	public GetCardDetailsResponse getCardDetails(
			@ModelAttribute GetCardDetailsRequest request) {
		GetCardDetailsResponse gcdr = new GetCardDetailsResponse();
		
		// Create mock customer content details
		List<CustomerContentBlockDetails> ccbds = new ArrayList<CustomerContentBlockDetails>();
		ccbds.add(new CustomerContentBlockDetails(1, ""));
		ccbds.add(new CustomerContentBlockDetails(2, ""));
		ccbds.add(new CustomerContentBlockDetails(3, ""));
		ccbds.add(new CustomerContentBlockDetails(4, ""));
		ccbds.add(new CustomerContentBlockDetails(5, ""));
		CustomerContentDetails ccd = new CustomerContentDetails();
		ccd.setTemplateId(request.getCardId() + 1);
		ccd.setBlocksDetails(ccbds);
		gcdr.setCustomerContent(ccd);
		
		// Create Template mock data
		List<BlockDetails> bdl = new ArrayList<BlockDetails>();
		bdl.add(new BlockDetails(1, "customerImage", 0, 0, 100, 100, 5, ""));
		bdl.add(new BlockDetails(2, "staticImage", 100, 0, 100, 100, 8, "http://alterralearning.com/wp-content/uploads/2012/12/demo-logo-large.png"));
		bdl.add(new BlockDetails(3, "customVideo", 200, 0, 100, 100, 3, ""));
		bdl.add(new BlockDetails(4, "customText", 300, 0, 100, 100, 2, ""));
		bdl.add(new BlockDetails(5, "staticText", 400, 0, 100, 100, 1, "I am demo text"));
		gcdr.setTemplateDetails(new CardTemplateDetails(request.getCardId() + 1, bdl));
		
		gcdr.setCardId(request.getCardId());
		gcdr.setStatus(ResponseStatus.SUCCESS);
		return gcdr;
	}
	
	@RequestMapping(value = "/addNewCards", method = RequestMethod.GET)
	@ResponseBody
	public GetCardDetailsResponse addNewCards(
			@ModelAttribute GetCardDetailsRequest request) {
				return null;
		
	}
			
			
}
