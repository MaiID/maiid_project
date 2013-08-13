package com.maiid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maiid.dao.SearchDao;
import com.maiid.model.SearchKey;

@Service
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	private SearchDao searchDao;

	@Override
	public List<SearchKey> getSearchKeyList() {
		// TODO Auto-generated method stub
		return searchDao.getSearchKeyList();
	}

}
