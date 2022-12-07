package tw.brad.myweb;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.api.BCrypt;

@WebServlet("/Brad20")
public class Brad20 extends HttpServlet {
	private Connection conn = null;
	private static final int CHECK_OK = 1;
	private static final int CHECK_EXCEPTION = 2;
	private static final int CHECK_ACCOUNT_ERROR = 3;
	private static final int CHECK_PASSWD_ERROR = 4;
	
	
	public Brad20() {
		Properties prop = new Properties();
		prop.put("user", "root");
		prop.put("password", "root");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("OK");
			conn = DriverManager.getConnection(
				"jdbc:mysql://localhost/eeit53", prop);
		}catch(Exception e) {
			System.out.println(e.toString());
		}
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//super.service(req, resp);
		
		request.setCharacterEncoding("UTF-8");
		
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		int check = checkAccount(account, passwd);
		
		switch(check) {
			case CHECK_OK:
				response.sendRedirect("brad21.html");
				break;
			case CHECK_ACCOUNT_ERROR:
//				response.sendRedirect("brad20.html");
//				break;
			case CHECK_PASSWD_ERROR:
//				response.sendRedirect("brad20.html");
//				break;
			case CHECK_EXCEPTION:
				response.sendRedirect("brad20.html");
				break;
		}
		
	}
	
	/*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		int check = checkAccount(account, passwd);
		
		switch(check) {
			case CHECK_OK:
				response.sendRedirect("brad21.html");
				break;
			case CHECK_ACCOUNT_ERROR:
//				response.sendRedirect("brad20.html");
//				break;
			case CHECK_PASSWD_ERROR:
//				response.sendRedirect("brad20.html");
//				break;
			case CHECK_EXCEPTION:
				response.sendRedirect("brad20.html");
				break;
		}
	}
	*/
	
	private int checkAccount(String account, String passwd) {
		String sql = "SELECT * FROM member WHERE account = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, account);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				String passwdHash = rs.getString("passwd");
				if (BCrypt.checkpw(passwd, passwdHash)) {
					return CHECK_OK;
				}else {
					return CHECK_PASSWD_ERROR;
				}
			}else {
				return CHECK_ACCOUNT_ERROR;
			}
		}catch(Exception e) {
			return CHECK_EXCEPTION;
		}
		
		
		
	}

}
