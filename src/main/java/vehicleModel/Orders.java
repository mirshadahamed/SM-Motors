package vehicleModel;



public class Orders
{
	String o_id;
    String name ;
    String address ;
    String email;                            
    String phone;
    String o_date;
    String o_time;
	public Orders() {
		super();
		
	}
	public Orders(String o_id, String name, String address, String email, String phone, String o_date, String o_time) {
		super();
		this.o_id = o_id;
		this.name = name;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.o_date = o_date;
		this.o_time = o_time;
	}
	public String getO_id() {
		return o_id;
	}
	public void setO_id(String o_id) {
		this.o_id = o_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getO_date() {
		return o_date;
	}
	public void setO_date(String o_date) {
		this.o_date = o_date;
	}
	public String getO_time() {
		return o_time;
	}
	public void setO_time(String o_time) {
		this.o_time = o_time;
	}
	
    

}
