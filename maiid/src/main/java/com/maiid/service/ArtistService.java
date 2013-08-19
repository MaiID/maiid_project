package com.maiid.service;

import com.maiid.model.Artist;
import com.maiid.model.ArtistDetails;

public interface ArtistService {
	public Artist artistLogin(String email, String password);
	void createNewArtist(Artist artist, ArtistDetails artistDetails);
}
