package vehicleSpare;

public class Ads {
	
	private String pcode;
	private String promoTitle;
	private String promoDescription ;
	private String promoDate ;
	private String promoend;
	public Ads() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Ads(String pcode, String promoTitle, String promoDescription, String promoDate, String promoend) {
		super();
		this.pcode = pcode;
		this.promoTitle = promoTitle;
		this.promoDescription = promoDescription;
		this.promoDate = promoDate;
		this.promoend = promoend;
	}

	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getPromoTitle() {
		return promoTitle;
	}
	public void setPromoTitle(String promoTitle) {
		this.promoTitle = promoTitle;
	}
	public String getPromoDescription() {
		return promoDescription;
	}
	public void setPromoDescription(String promoDescription) {
		this.promoDescription = promoDescription;
	}
	public String getPromoDate() {
		return promoDate;
	}
	public void setPromoDate(String promoDate) {
		this.promoDate = promoDate;
	}
	public String getPromoend() {
		return promoend;
	}
	public void setPromoend(String promoend) {
		this.promoend = promoend;
	}
	
	
	
	

}
