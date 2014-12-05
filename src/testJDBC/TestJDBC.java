package testJDBC;

import java.sql.SQLException;

import util.DBManager;

public class TestJDBC {

	public static void main(String[] args) {
		try {
			DBManager db = new DBManager();
			
			db.release();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	}

}
