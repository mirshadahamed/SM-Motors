package vehicleSpare;

public class Pay {
	
	
	String payname;
	String mail;
	String remark;
	String amount;
	String cnum;
	String cname;
	String cmonth;
	String cyear;
	String cvv;
	public Pay(String payname, String mail, String remark, String amount, String cnum, String cname, String cmonth,
			String cyear, String cvv) {
		super();
		this.payname = payname;
		this.mail = mail;
		this.remark = remark;
		this.amount = amount;
		this.cnum = cnum;
		this.cname = cname;
		this.cmonth = cmonth;
		this.cyear = cyear;
		this.cvv = cvv;
	}
	public String getPayname() {
		return payname;
	}
	public void setPayname(String payname) {
		this.payname = payname;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getCnum() {
		return cnum;
	}
	public void setCnum(String cnum) {
		this.cnum = cnum;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCmonth() {
		return cmonth;
	}
	public void setCmonth(String cmonth) {
		this.cmonth = cmonth;
	}
	public String getCyear() {
		return cyear;
	}
	public void setCyear(String cyear) {
		this.cyear = cyear;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	
	
	
	

}
