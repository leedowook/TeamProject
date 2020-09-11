package service;

import dao.registerDao;
import bean.userInfo;

import java.io.PrintWriter;
import java.sql.*;
import static db.jdbc.*;

public class registerService {
	public boolean register(userInfo user) throws SQLException{
		boolean result = false;
		registerDao dao = registerDao.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		result = dao.register(user);
		if(result) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return result;
	}
}
