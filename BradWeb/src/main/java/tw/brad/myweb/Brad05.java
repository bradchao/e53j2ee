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
		String op = request.getParameter("op");
		String r = "";
		if (x != null && y != null) {
			System.out.println(op);
			int intX = 0, intY = 0;
			try {
				intX = Integer.parseInt(x);
			}catch(Exception e) {}
			
			try {
				intY = Integer.parseInt(y);
			}catch(Exception e) {}
			
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
		out.print("<select name='op'>");
		out.print("<option value='1'> + </option>");
		out.print("<option value='2'> - </option>");
		out.print("<option value='3'> x </option>");
		out.print("<option value='4'> / </option>");
		out.print("</select>");
		out.printf("<input name='y'/ value='%s'> ", y);
		out.print("<input type='submit' value='='>");
		out.printf("<span> %s</span>", r);
		out.print("</form>");
		
		response.flushBuffer();		
		
	}
}
