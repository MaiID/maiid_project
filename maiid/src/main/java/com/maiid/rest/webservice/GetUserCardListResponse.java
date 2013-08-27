package com.maiid.rest.webservice;

import java.util.List;

import com.maiid.model.CardListItem;

public class GetUserCardListResponse extends BaseResponse{
	
	private List<CardListItem> cards;

	public List<CardListItem> getCards() {
		return cards;
	}

	public void setCards(List<CardListItem> cards) {
		this.cards = cards;
	}
}
