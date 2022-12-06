package tw.brad.api;

public class Brad14 {
	private int x, y;
	
	public Brad14(String x, String y) throws Exception {
		this.x = Integer.parseInt(x);
		this.y = Integer.parseInt(y);
	}
	
	public int add() {
		return x + y;
	}
}
