package jee.lpc.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jee.lpc.model.User;

public class UserDAO {	
	//Recuperer un user
	public static User getUserById(int id){	
		User u = null;
		try {
			Connection con = UtilConnexion.seConnecter();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM users_lpc WHERE id = ?");	
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				u = new User(rs.getInt("id"),
						rs.getString("pseudo"),
						rs.getString("email"),
						rs.getString("tel"),
						rs.getString("pwd"),
						rs.getString("img")						
						);
			}			
			con.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}
	
	
	//Effacer un user
	public static boolean deleteUser(int id) {
		try {
			Connection con = UtilConnexion.seConnecter();
			PreparedStatement ps = con.prepareStatement("DELETE FROM users_lpc WHERE id= ?");
			ps.setInt(1, id);
			ps.executeUpdate();
			con.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//Creer un user
	public static boolean addUser(String pseudo,String email, String tel, String pwd) {
		try {
			Connection con = UtilConnexion.seConnecter();
			PreparedStatement ps = con.prepareStatement("INSERT INTO users_lpc (pseudo, email, tel, pwd) VALUE (?,?,?,?)");
			ps.setString(1, pseudo);
			ps.setString(2, email);
			ps.setString(3, tel);
			ps.setString(4, pwd);
			ps.executeUpdate();
			con.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//Editer un user
	public static boolean updateUser(int id, String pseudo,String email, String tel, String pwd, String img) {		
		try {
			Connection con = UtilConnexion.seConnecter();
			PreparedStatement ps = con.prepareStatement("UPDATE users_lpc SET pseudo= ?, email= ?, tel= ?, pwd= ?, img= ? WHERE id = ?");
			ps.setString(1, pseudo);
			ps.setString(2, email);
			ps.setString(3, tel);
			ps.setString(4, pwd);
			ps.setString(5, img);
			ps.setInt(6, id);
			ps.executeUpdate();
			con.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	
}
