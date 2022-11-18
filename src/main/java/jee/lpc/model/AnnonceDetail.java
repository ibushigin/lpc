package jee.lpc.model;

public class AnnonceDetail {
	String titre;
	String descr;
	float prix;
	String aImg;
	String catName;
	String pseudo;
	String email;
	String tel;
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public float getPrix() {
		return prix;
	}
	public void setPrix(float prix) {
		this.prix = prix;
	}
	public String getaImg() {
		return aImg;
	}
	public void setaImg(String aImg) {
		this.aImg = aImg;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
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
	public AnnonceDetail(String titre, String descr, float prix, String aImg, String catName, String pseudo,
			String email, String tel) {
		super();
		this.titre = titre;
		this.descr = descr;
		this.prix = prix;
		this.aImg = aImg;
		this.catName = catName;
		this.pseudo = pseudo;
		this.email = email;
		this.tel = tel;
	}
	
	

}
