package tw.brad.myweb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.api.BradUtils;

@WebServlet("/Brad15")
public class Brad15 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//----------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String content = BradUtils.loadView();
		out.print(content);
		response.flushBuffer();
	}

}
