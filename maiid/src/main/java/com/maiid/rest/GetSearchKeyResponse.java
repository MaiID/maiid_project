package com.maiid.rest;

import java.util.List;

import com.maiid.model.SearchKey;

public class GetSearchKeyResponse extends BaseResponse{
	
	private List<SearchKey> keys;

	public List<SearchKey> getKeys() {
		return keys;
	}

	public void setKeys(List<SearchKey> keys) {
		this.keys = keys;
	}
}
