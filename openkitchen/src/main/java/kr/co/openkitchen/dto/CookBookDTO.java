package kr.co.openkitchen.dto;

public class CookBookDTO {

	private String cMainsumnail;
	private String cName;
	private int cPrice;
	private String recPerstatus;

	public String getcMainsumnail() {
		return cMainsumnail;
	}

	public void setcMainsumnail(String cMainsumnail) {
		this.cMainsumnail = cMainsumnail;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public int getcPrice() {
		return cPrice;
	}

	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}

	public String getRecPerstatus() {
		return recPerstatus;
	}

	public void setRecPerstatus(String recPerstatus) {
		this.recPerstatus = recPerstatus;
	}

}
