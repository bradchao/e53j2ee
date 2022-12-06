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
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		Integer r =  (Integer)request.getAttribute("result");
		
		String result;
		if (x!= null && y!=null) {
			result = r + "";
		}else {
			x = y = result = "";
		}

		//----------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			String content = BradUtils.loadView("view2");
			out.printf(content, x, y, result);
			response.flushBuffer();
		}catch(Exception e) {
			out.print("ERROR");
			response.flushBuffer();
		}
	}

}
