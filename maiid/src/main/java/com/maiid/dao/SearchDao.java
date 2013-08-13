package com.maiid.dao;

import java.util.List;

import com.maiid.model.SearchKey;

public interface SearchDao {
	public List<SearchKey> getSearchKeyList();
}
