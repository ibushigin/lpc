package jee.lpc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import jee.lpc.model.Annonce;
import jee.lpc.model.AnnonceDetail;

public class AnnonceDAO {
	public static List<Annonce> getAllAnnoncesOrderedByID(){
			
			List<Annonce> result = new ArrayList<>();
			try {
				Connection con = UtilConnexion.seConnecter();
				ResultSet rs = con.createStatement().executeQuery("SELECT * FROM annonce_lpc ORDER by ID");
					while (rs.next() ) {						
						result.add( new Annonce(
								rs.getInt("id"),
								rs.getInt("user_id"),
								rs.getString("titre"),
								rs.getInt("cat"),
								rs.getString("descr"),
								rs.getString("prix"),
								rs.getString("img")
								));				
					}
				con.close();
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}
	public static AnnonceDetail getAnnonceById(int id){	
		AnnonceDetail a = null;
		try {
			Connection con = UtilConnexion.seConnecter();
			PreparedStatement ps = con.prepareStatement("SELECT a.titre, a.descr, a.prix, a.img AS aImg, c.name, u.pseudo, u.email, u.tel "
					+ "FROM annonce_lpc AS a, cat_lpc AS c, users_lpc AS u "
					+ "WHERE a.user_id = u.id AND a.cat = c.id AND a.id = ?;");	
			ps.setInt(1, id);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				a = new AnnonceDetail(
						rs.getString("titre"),
						rs.getString("descr"),
						rs.getFloat("prix"),
						rs.getString("aImg"),
						rs.getString("name"),
						rs.getString("pseudo"),
						rs.getString("email"),
						rs.getString("tel")
						);
			}			
			con.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}




}
