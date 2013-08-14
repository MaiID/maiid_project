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
	private static String SQL_GETALLSEARCHKEYTYPE = "select * from maiid_search_key_type where id=?";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<SearchKey> getSearchKeyList() {
		List<SearchKey> result = new ArrayList<SearchKey>();
		List<Map<String, Object>> resultSet = jdbcTemplate
				.queryForList(SQL_GETALLSEARCHKEY);
		for (Map<String, Object> map : resultSet) {
			SearchKey sk = new SearchKey();
			List<Map<String, Object>> typeResult = jdbcTemplate.queryForList(SQL_GETALLSEARCHKEYTYPE, (Integer) map.get("tid"));
			if(typeResult.size() > 0){
				sk.setId((Integer) map.get("id"));
				sk.setType((String) typeResult.get(0).get("type"));
				sk.setKey((String) map.get("key"));
				result.add(sk);
			}
		}
		return result;
	}

}
