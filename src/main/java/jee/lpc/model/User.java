package jee.lpc.model;

public class User {
	private int id;
	private String pseudo;
	private String email;
	private String tel;
	private String pwd;
	private String img;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public User(String pseudo, String email, String tel, String pwd, String img) {
		super();
		this.pseudo = pseudo;
		this.email = email;
		this.tel = tel;
		this.pwd = pwd;
		this.img = img;
	}
	public User(int id, String pseudo, String email, String tel, String pwd, String img) {
		super();
		this.id = id;
		this.pseudo = pseudo;
		this.email = email;
		this.tel = tel;
		this.pwd = pwd;
		this.img = img;
	}
	
	
}
