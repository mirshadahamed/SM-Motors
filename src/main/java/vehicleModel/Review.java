package vehicleModel;



public class Review {
	
	String pcode;
	String rtype;
	String pname;
	String msg;
	String rate;
	public Review() {
		super();
		
	}
	public Review(String pcode, String rtype, String pname, String msg, String rate) {
		super();
		this.pcode = pcode;
		this.rtype = rtype;
		this.pname = pname;
		this.msg = msg;
		this.rate = rate;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	
	

}
