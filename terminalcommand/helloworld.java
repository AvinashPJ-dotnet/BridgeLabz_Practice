public class Helloworld {
	public static void main(String[] argv){
		while(true){
			System.out.println("hello world");
			try{
				Thread.sleep(60000);
			}catch(Exception ex){}
		}
	}

}
