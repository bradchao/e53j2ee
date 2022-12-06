package tw.brad.api;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class BradUtils {
	public static String loadView(String view) throws Exception {
		
		String viewFile = String.format(
			"C:\\Users\\USER\\git\\repository7\\BradWeb\\src\\main\\webapp\\views\\%s.html", view); 
		File source = new File(viewFile);
		StringBuffer sb = new StringBuffer();
		
		FileReader fin = new FileReader(source);
		BufferedReader reader = new BufferedReader(fin);
		String line = null;
		while ( (line = reader.readLine()) != null) {
			sb.append(line);
		}
		
		return sb.toString();
	}
}
