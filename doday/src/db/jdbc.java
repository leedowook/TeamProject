package db;


import java.sql.*;

//db와 관련된 기능들을 static 메소드로 정희해놓은 클래스
public class jdbc {
	public static Connection getConnection() {
		Connection con=null;
		try {
			 // 1. 드라이버 로딩
            // 드라이버 인터페이스를 구현한 클래스를 로딩
            // mysql, oracle 등 각 벤더사 마다 클래스 이름이 다르다.
            // mysql은 "com.mysql.jdbc.Driver"이며, 이는 외우는 것이 아니라 구글링하면 된다.
            // 참고로 이전에 연동했던 jar 파일을 보면 com.mysql.jdbc 패키지에 Driver 라는 클래스가 있다.
        	Class.forName("org.mariadb.jdbc.Driver");
            
            
            // 2. 연결하기
            // 드라이버 매니저에게 Connection 객체를 달라고 요청한다.
            // Connection을 얻기 위해 필요한 url 역시, 벤더사마다 다르다.
            // mysql은 "jdbc:mysql://localhost/사용할db이름" 이다.
            String url = "jdbc:mariadb://localhost:3306/shoping";

            // @param  getConnection(url, userName, password);
            // @return Connection
            con = DriverManager.getConnection(url, "root", "1234");
            System.out.println("연결 성공");
            con.setAutoCommit(false);
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return con;
		
	}
	public static void close(Connection con) {
		try {con.close();}catch(Exception e) {
			e.printStackTrace();
		}	
	}
	public static void close(PreparedStatement pstmt){
		try {pstmt.close();}catch(Exception e) {
			e.printStackTrace();
		}	
	}
	public static void close(Statement stmt) {
		try {stmt.close();}
		catch(Exception e) {
			e.printStackTrace();
		}}
	public static void close(ResultSet rs) {
		try {rs.close();}
		catch(Exception e) {
			e.printStackTrace();
		}}
	public static void commit(Connection con) {
		try {con.commit();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	public static void rollback(Connection con) {
		try {con.rollback();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
		
}
