package com.maiid.model;

import java.util.List;

public class CustomerContentDetails {

	public CustomerContentDetails() {

	}

	public CustomerContentDetails(int templateId,
			List<CustomerContentBlockDetails> blocksDetails) {
		super();
		this.templateId = templateId;
		this.blocksDetails = blocksDetails;
	}

	private int templateId;
	private List<CustomerContentBlockDetails> blocksDetails;

	public List<CustomerContentBlockDetails> getBlocksDetails() {
		return blocksDetails;
	}

	public void setBlocksDetails(List<CustomerContentBlockDetails> blocksDetails) {
		this.blocksDetails = blocksDetails;
	}

	public int getTemplateId() {
		return templateId;
	}

	public void setTemplateId(int templateId) {
		this.templateId = templateId;
	}

}
