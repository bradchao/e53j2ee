package tw.brad.myweb;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad17")
public class Brad17 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String source = 
			"C:\\Users\\USER\\git\\repository7\\BradWeb\\src\\main\\webapp\\imgs\\coffee.jpg";
		BufferedImage bimg = ImageIO.read(new File(source));
		
		Font font = new Font(null, Font.BOLD, 48);
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(-30)); // 角度 degree => 弧度
		Font font2 = font.deriveFont(tran);
		
		Graphics2D g2d = bimg.createGraphics();
		g2d.setColor(Color.YELLOW);
		g2d.setFont(font2);
		g2d.drawString("資展國際", 100, 200);
		
		//-------------
		response.setContentType("image/jpeg");
		OutputStream out = response.getOutputStream();
		ImageIO.write(bimg, "jpeg", out);
		response.flushBuffer();
		
		FileOutputStream fout = 
			new FileOutputStream("C:\\Users\\USER\\git\\repository7\\BradWeb\\src\\main\\webapp\\imgs\\coffeev2.jpg");
		ImageIO.write(bimg, "jpeg", fout);
		fout.flush();
		fout.close();
	}
}
