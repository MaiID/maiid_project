package com.maiid.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.maiid.model.Artist;
import com.maiid.model.ArtistAward;
import com.maiid.model.ArtistExp;

@Repository
public class ArtistDaoImpl implements ArtistDao {

	private static String SQL_ADD_ARTUST = "insert into maiid_artist "
			+ "(email, password, lastname, firstname, gender, district)"
			+ " values (?, ?, ?, ?, ?, ?) returning id;";
	private static String SQL_INSERTAWARD = "insert into maiid_artist_award "
			+ "(aid, date, grading, competition, organizer, description)"
			+ " values (?, ?, ?, ?, ?, ?) returning id";
	private static String SQL_INSERTEXP = "insert into maiid_artist_exp "
			+ "(aid, date, position, job, company, employee, description)"
			+ " values (?, ?, ?, ?, ?, ?, ?) returning id";
	private static String SQL_SEARCH_ARTIST_BY_EMAIL_PASSWORD = "select * from maiid_artist where"
			+ " email=? and password=?";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public Artist newArtist(Artist artist) {
		// TODO Auto-generated method stub
		int aid = jdbcTemplate.queryForObject(SQL_ADD_ARTUST, Integer.class,
				artist.getEmail(), artist.getPassword(), artist.getLastname(),
				artist.getFirstname(), artist.getGender(), artist.getDistrict());
		artist.setId(aid);
		return artist;
	}

	@Override
	public void getArtistDetailsById(int aid) {
		// TODO Auto-generated method stub

	}

	@Override
	public ArtistAward insertArtistAward(ArtistAward award) {
		// TODO Auto-generated method stub
		int id = jdbcTemplate.queryForObject(SQL_INSERTAWARD, Integer.class,
				award.getAid(), award.getDate(), award.getGrading(),
				award.getCompetition(), award.getOrganizer(), award.getDescription());
		award.setId(id);
		return award;
	}

	@Override
	public ArtistExp insertArtistExp(ArtistExp exp) {
		// TODO Auto-generated method stub
		int id = jdbcTemplate.queryForObject(SQL_INSERTEXP, Integer.class,
				exp.getAid(), exp.getDate(), exp.getPosition(), exp.getJob(),
				exp.getCompany(), exp.getEmployee(), exp.getDescription());
		exp.setId(id);
		return exp;
	}

	@Override
	public List<Artist> getArtistByEmailAndPassword(String email, String password) {
		ArrayList<Artist> artists = new ArrayList<Artist>();
		List<Map<String, Object>> resultSet = jdbcTemplate.queryForList(
				SQL_SEARCH_ARTIST_BY_EMAIL_PASSWORD, email, password);
		for(Map<String, Object> result : resultSet){
			Artist artist = new Artist();
			artist.setId((Integer) result.get("id"));
			artist.setEmail((String) result.get("email"));
			artist.setPassword((String) result.get("password"));
			artist.setLastname((String) result.get("lastname"));
			artist.setFirstname((String) result.get("firstname"));
			artist.setGender((String) result.get("gender"));
			artist.setDistrict((String) result.get("district"));
			artists.add(artist);
		}
		return artists;
	}
}
