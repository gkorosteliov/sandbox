
public class ThreadSimple implements Runnable{
	public void run(){
		System.out.println("I am running.");
	};
	public static void main(String[] args) {
		Thread t = new Thread(new ThreadSimple());
		t.start();
	}

}
