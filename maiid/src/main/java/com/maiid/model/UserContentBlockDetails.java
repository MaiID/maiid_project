package com.maiid.model;

public class UserContentBlockDetails {

	private int blockId;
	private String customerContent;

	public UserContentBlockDetails(int blockId, String customerContent) {
		super();
		this.blockId = blockId;
		this.customerContent = customerContent;
	}

	public UserContentBlockDetails() {

	}

	public int getBlockId() {
		return blockId;
	}

	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}

	public String getCustomerContent() {
		return customerContent;
	}

	public void setCustomerContent(String customerContent) {
		this.customerContent = customerContent;
	}

}
