package vo;

public class User {
	private String username;
	private String password;
	private String repassword;
	private String email;
	private String tel;
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		if(tel == null){
			this.tel = "";
		}
		this.tel = tel;
	}

	private String weixin;
	private String qq;
	private String address; 
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		if(username == null){
			this.username = "";
		}
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		if(password == null){
			this.password = "";
		}
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		if(repassword == null){
			this.repassword = "";
		}
		this.repassword = repassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		if(email == null){
			this.email = "";
		}
		this.email = email;
	}
	public String getWeixin() {
		return weixin;
	}
	public void setWeixin(String weixin) {
		if(weixin == null){
			this.weixin = "";
		}
		this.weixin = weixin;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		if(qq == null){
			this.qq = "";
		}
		this.qq = qq;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		if(address == null){
			this.address = "";
		}
		this.address = address;
	}
	
	public String toString(){
		
		return "username is" + username +"," + "password is" + password;
	}
	
}
