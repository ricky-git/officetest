package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager {
	private Connection con;
	private Statement stm;
	private ResultSet rs;
	
	public DBManager() throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String url="jdbc:mysql://localhost:3306/window?useUnicode=true&characterEncoding=utf-8";
			String user="root";
			String password="123";
			
			con=DriverManager.getConnection(url,user,password);
			
			stm=con.createStatement();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}
	public boolean executeUpdate(String sql){
		boolean ret = false;
		int i;
		try {
			i = stm.executeUpdate(sql);
			if(i > 0){
				ret = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return ret;
	}
	//3.对于select的操作
	public ResultSet executeQuery(String sql){
		try {
			rs = stm.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	//4.资源的释放
	public void release(){
		
			try {
				if(con != null){
				con.close();
				}
				if(stm != null){
					stm.close();
				}
				if(rs != null){
					rs.close();
				}
			} catch (SQLException e) {
				
				e.printStackTrace();

			}
		
	}
	

}
