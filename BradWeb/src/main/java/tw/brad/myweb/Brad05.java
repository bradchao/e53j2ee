package tw.brad.myweb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad05")
public class Brad05 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String r = "";
		if (x != null && y != null) {
			int intX = Integer.parseInt(x);
			int intY = Integer.parseInt(y);
			int result = intX + intY;
			r += result;
		}else {
			x = y = "";
		}
		
		//------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<form action='Brad05'>");
		out.printf("<input name='x' value='%s' />", x);
		out.print(" + ");
		out.printf("<input name='y'/ value='%s'> ", y);
		out.print("<input type='submit' value='='>");
		out.printf("<span> %s</span>", r);
		out.print("</form>");
		
		response.flushBuffer();		
		
	}
}
