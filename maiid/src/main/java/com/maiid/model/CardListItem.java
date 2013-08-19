package com.maiid.model;

public class CardListItem {

	private int cardId;
	private String cardTitle;
	private String modifyDate;
	private String previewImage;
	
	public CardListItem(){
		
	}

	public CardListItem(int cardId, String cardTitle, String modifyDate,
			String previewImage) {
		super();
		this.cardId = cardId;
		this.cardTitle = cardTitle;
		this.modifyDate = modifyDate;
		this.previewImage = previewImage;
	}

	public int getCardId() {
		return cardId;
	}

	public void setCardId(int cardId) {
		this.cardId = cardId;
	}

	public String getCardTitle() {
		return cardTitle;
	}

	public void setCardTitle(String cardTitle) {
		this.cardTitle = cardTitle;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getPreviewImage() {
		return previewImage;
	}

	public void setPreviewImage(String previewImage) {
		this.previewImage = previewImage;
	}

}
