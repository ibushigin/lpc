package jee.lpc.model;

public class Annonce {
	private int id;
	private int user_id;
	private String title;
	private int cat;
	private String descr;
	private String prix;
	private String img;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getCat() {
		return cat;
	}
	public void setCat(int cat) {
		this.cat = cat;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public String getPrix() {
		return prix;
	}
	public void setPrix(String prix) {
		this.prix = prix;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Annonce(int id, int user_id, String title, int cat, String descr, String prix, String img) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.title = title;
		this.cat = cat;
		this.descr = descr;
		this.prix = prix;
		this.img = img;
	}
	public Annonce(int user_id, String title,int cat, String descr, String prix, String img) {
		super();
		this.user_id = user_id;
		this.title = title;
		this.cat = cat;
		this.descr = descr;
		this.prix = prix;
		this.img = img;
	}
	
	
}
