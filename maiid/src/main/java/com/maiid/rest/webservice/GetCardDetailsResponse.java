package com.maiid.rest.webservice;

import com.maiid.model.CardTemplateDetails;
import com.maiid.model.UserContentDetails;

public class GetCardDetailsResponse extends BaseResponse {

	private int cardId;
	private CardTemplateDetails templateDetails;
	private UserContentDetails customerContent;


	public int getCardId() {
		return cardId;
	}

	public void setCardId(int cardId) {
		this.cardId = cardId;
	}

	public UserContentDetails getCustomerContent() {
		return customerContent;
	}

	public void setCustomerContent(UserContentDetails customerContent) {
		this.customerContent = customerContent;
	}

	public CardTemplateDetails getTemplateDetails() {
		return templateDetails;
	}

	public void setTemplateDetails(CardTemplateDetails templateDetails) {
		this.templateDetails = templateDetails;
	}

}
