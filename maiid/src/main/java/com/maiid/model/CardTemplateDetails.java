package com.maiid.model;

import java.util.List;

public class CardTemplateDetails {
	private int templateId;
	private List<BlockDetails> block;

	public CardTemplateDetails() {

	}

	public CardTemplateDetails(int templateId, List<BlockDetails> block) {
		super();
		this.templateId = templateId;
		this.block = block;
	}

	public int getTemplateId() {
		return templateId;
	}

	public void setTemplateId(int templateId) {
		this.templateId = templateId;
	}

	public List<BlockDetails> getBlock() {
		return block;
	}

	public void setBlock(List<BlockDetails> block) {
		this.block = block;
	}

}
