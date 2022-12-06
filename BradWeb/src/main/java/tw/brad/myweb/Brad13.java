package tw.brad.myweb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.api.Brad14;

@WebServlet("/Brad13")
public class Brad13 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 接收參數
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		
		// 2. 演算法 Model
		try {
			Brad14 model = new Brad14(x, y);
			int result = model.add();
			
			request.setAttribute("result", result); // int -> autoboxing -> Integer
			
		}catch(Exception e) {
			
		}
		
		// 3. 呈現 View
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("Brad15");
		dispatcher.forward(request, response);
		
		
	}

}
