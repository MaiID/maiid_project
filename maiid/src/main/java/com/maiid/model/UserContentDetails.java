package com.maiid.model;

import java.util.List;

public class UserContentDetails {

	public UserContentDetails() {

	}

	public UserContentDetails(int templateId,
			List<UserContentBlockDetails> blocksDetails) {
		super();
		this.templateId = templateId;
		this.blocksDetails = blocksDetails;
	}

	private int templateId;
	private List<UserContentBlockDetails> blocksDetails;

	public List<UserContentBlockDetails> getBlocksDetails() {
		return blocksDetails;
	}

	public void setBlocksDetails(List<UserContentBlockDetails> blocksDetails) {
		this.blocksDetails = blocksDetails;
	}

	public int getTemplateId() {
		return templateId;
	}

	public void setTemplateId(int templateId) {
		this.templateId = templateId;
	}

}
