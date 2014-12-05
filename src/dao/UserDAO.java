package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.DBManager;
import vo.User;

public class UserDAO {
	
	public ArrayList<User> query(User user){
		ArrayList<User>list = new ArrayList<User>();
		
		try {
			DBManager db = new DBManager();
			String sql = "select email where 1=1";
			if(!(user.getUsername() == null||user.getUsername().equals(""))){
				sql += " and username = '" + user.getUsername() + "'";
			}
			if(!(user.getPassword() == null||user.getPassword().equals(""))){
				sql += " and password = '" + user.getPassword() + "'";
			}
			if(!(user.getRepassword() == null||user.getRepassword().equals(""))){
				sql += " and repassword = '" + user.getRepassword() + "'";
			}
			if(!(user.getEmail() == null||user.getEmail().equals(""))){
				sql += " and email = '" + user.getEmail() + "'";
			}
			if(!(user.getTel() == null||user.getTel().equals(""))){
				sql += " and  = '" + user.getTel() + "'";
			}
			if(!(user.getWeixin() == null||user.getWeixin().equals(""))){
				sql += " and weixin = '" + user.getWeixin() + "'";
			}
			if(!(user.getQq() == null||user.getQq().equals(""))){
				sql += " and Qq = '" + user.getQq() + "'";
			}
			if(!(user.getAddress() == null||user.getAddress().equals(""))){
				sql += " and address = '" + user.getAddress() + "'";
			}
		    ResultSet rs = db.executeQuery(sql);
		    while(rs.next()){
		    	User user1=new User();
		    	user1.setUsername(rs.getString("username"));
		    	user1.setUsername(rs.getString("password"));
		    	user1.setUsername(rs.getString("repassword"));
		    	user1.setUsername(rs.getString("email"));
		    	user1.setTel(rs.getString("tel"));
		    	user1.setUsername(rs.getString("weixin"));
		    	user1.setUsername(rs.getString("qq"));
		    	user1.setUsername(rs.getString("address"));
		    	
		    	
		    }
		    db.release();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean add(User user){
		
		boolean ret = false;
		try {
			DBManager db = new DBManager();
			
			String sql = "insert into customer(username,password,repassword,email,tel,weixin,qq,address)values(";
			sql += "'" + user.getUsername() + "',";
			sql += "'" + user.getPassword() + "',";
			sql += "'" + user.getRepassword() + "',";
			sql += "'" + user.getEmail() + "',";
			sql += "'" + user.getTel() + "',";
			sql += "'" + user.getWeixin() + "',";
			sql += "'" + user.getQq() + "',";
			sql += "'" + user.getAddress() + "'";
			sql += ")";
			
			System.out.println(sql);
			
			ret = db.executeUpdate(sql);
			
			db.release();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return ret;
	}

}
