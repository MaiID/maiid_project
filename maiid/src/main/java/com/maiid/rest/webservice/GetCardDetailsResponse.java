package com.maiid.rest.webservice;

import com.maiid.model.CardTemplateDetails;
import com.maiid.model.CustomerContentDetails;

public class GetCardDetailsResponse extends BaseResponse {

	private int cardId;
	private CardTemplateDetails templateDetails;
	private CustomerContentDetails customerContent;


	public int getCardId() {
		return cardId;
	}

	public void setCardId(int cardId) {
		this.cardId = cardId;
	}

	public CustomerContentDetails getCustomerContent() {
		return customerContent;
	}

	public void setCustomerContent(CustomerContentDetails customerContent) {
		this.customerContent = customerContent;
	}

	public CardTemplateDetails getTemplateDetails() {
		return templateDetails;
	}

	public void setTemplateDetails(CardTemplateDetails templateDetails) {
		this.templateDetails = templateDetails;
	}

}
