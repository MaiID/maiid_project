package com.maiid.dao;

import com.maiid.model.MaiidArtist;

public interface MaiidArtistDao {
	
	public void add();
	public void get(int id);
	public void getByEmailAndPassword(String email, String password);
	public void insert(MaiidArtist artist);
	public void delete(int id);
	
}
