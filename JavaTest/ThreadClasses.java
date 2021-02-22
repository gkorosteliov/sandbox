class Out
{
	static int printerNum = 0;
}
class Printer extends Out implements Runnable
{	
	@Override
	public void run(){
		print();
	};
	void increment()
	{
		printerNum++;
	}
	synchronized void print() {
		increment();
		for (int i=0; i<10; i++)
		{
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("Printer"+printerNum+" print #" + i);
		}
	}
}
public class ThreadClasses {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Runnable p = new Printer();
		Thread t = new Thread (p);
		t.start();
		
		Thread t1 = new Thread (p);
		t1.start();
		
		for (int i=0; i<10; i++)
		{
			System.out.println("PrinterA print #" + i);
		}
	}
}
