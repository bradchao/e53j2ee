package tw.brad.myweb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Brad07")
@MultipartConfig
public class Brad07 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String urIp = request.getRemoteAddr();
		Part part = request.getPart("upload");
		part.write(
			"C:\\Users\\USER\\git\\repository7\\BradWeb\\src\\main\\webapp\\upload\\" + urIp +".jpg");
		
		
	}

}
