package com.maiid.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.maiid.model.SearchKey;

@Repository
public class SearchDaoImpl implements SearchDao {

	private static String SQL_GETALLSEARCHKEY = "select * from maiid_search_key";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<SearchKey> getSearchKeyList() {
		List<SearchKey> result = new ArrayList<SearchKey>();
		List<Map<String, Object>> resultSet = jdbcTemplate
				.queryForList(SQL_GETALLSEARCHKEY);
		for (Map<String, Object> map : resultSet) {
			SearchKey sk = new SearchKey();
			sk.setId((Integer) map.get("id"));
			sk.setTid((Integer) map.get("tid"));
			sk.setKey((String) map.get("key"));
			result.add(sk);
		}
		return result;
	}

}
