package com.maiid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maiid.dao.ArtistDao;
import com.maiid.model.Artist;
import com.maiid.model.ArtistDetails;

@Service
public class ArtistServiceImpl implements ArtistService {

	@Autowired
	private ArtistDao artistDao;

	@Override
	public Artist artistLogin(String email, String password) {
		List<Artist> artists = artistDao.getArtistByEmailAndPassword(email,
				password);
		if(artists.size() > 0){
			return artists.get(0);
		}else{
			return null;
		}
	}
	
	@Override
	public void createNewArtist(Artist artist, ArtistDetails artistDetails){
		artistDao.createArtist(artist, artistDetails);
	}
}
