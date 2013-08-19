package com.maiid.dao;

import java.util.List;

import com.maiid.model.Artist;
import com.maiid.model.ArtistAward;
import com.maiid.model.ArtistDetails;
import com.maiid.model.ArtistExp;

public interface ArtistDao {
	public Artist newArtist(Artist artist);
	public ArtistDetails insertArtistDetails(ArtistDetails artistDetails);
	public ArtistAward insertArtistAward(ArtistAward award);
	public ArtistExp insertArtistExp(ArtistExp exp);
	public void getArtistDetailsById(int aid);
	List<Artist> getArtistByEmailAndPassword(String email, String password);
	void createArtist(Artist artist, ArtistDetails artistDetails);
}
