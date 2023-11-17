package frontweb.vo;
// 
public class NonMember {
	private String name;
	private String phone;
	private String email;
	private int pwd;
	public NonMember() {
	}
	
	public NonMember(String name, String phone, String email, int pwd) {
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.pwd = pwd;
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPwd() {
		return pwd;
	}

	public void setPwd(int pwd) {
		this.pwd = pwd;
	}

	
	

}
