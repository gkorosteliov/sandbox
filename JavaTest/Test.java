class A
{
	static int i=100;

	static
	{
		i = i-- - --i;
		System.out.println("First " + i);
	}
	
	{
		i = i++ + ++i;
		System.out.println("Second " + i);
	}
}

class B extends A
{
	static int i=100;

	static
	{
		i = --i - i--;
		System.out.println("Third " + i);
	}
	
	{
		i = ++i + i++;
		System.out.println("Forth " + i);
	}
}


public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		B b = new B();
		System.out.println(b.i);
	}

}
