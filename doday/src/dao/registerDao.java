package dao;

import static db.jdbc.close;

import java.sql.*;
import java.util.*;

import bean.userInfo;

public class registerDao {
	private static registerDao registerDao;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public static registerDao getInstance() {
		if(registerDao == null) {
			registerDao = new registerDao();
		}
		return registerDao;
	}
	
	public void setConnection(Connection con){
		this.con = con;
	}
	
	public boolean register(userInfo user) {
		boolean result = false;
		int sqlResult = 0;
		int number = 0;
		pstmt = null;
		String num = "select max(user_Num) from User";
		String sql = "INSERT INTO User VALUES(?,?,?,?,?,?,?)";
		String changeAge = "update User set user_age = replace(user_age, 0, 'null') where user_id=? and user_password=?";
		String changePhone = "update User set user_phone = replace(user_phone, 0, 'null') where user_id=? and user_password=?";
		
		try {
			pstmt = con.prepareStatement(num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				number = rs.getInt(1)+1;
			}else {
				number = 1;
			}

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setString(2, user.getId());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getName());
			pstmt.setString(5, user.getPhone());
			pstmt.setInt(6, user.getAge());
			pstmt.setInt(7, user.getAuth());
			sqlResult = pstmt.executeUpdate();
			if(sqlResult == 1) {
				pstmt = con.prepareStatement(changeAge);
				pstmt.setString(1, user.getId());
				pstmt.setString(2, user.getPassword());
				pstmt.executeQuery();
				pstmt = con.prepareStatement(changePhone);
				pstmt.setString(1, user.getId());
				pstmt.setString(2, user.getPassword());
				pstmt.executeQuery();
				result = true;
			}	
		}catch(Exception e) {
			System.out.println("board dao create에서 오류");
			e.printStackTrace();
			close(pstmt);
			close(rs);
		}finally {
			close(pstmt);
			close(rs);
		}
		return result;
	}

}
