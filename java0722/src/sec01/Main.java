package sec01;

public class Main {
	public static void main(String[] args) {
		A a = new A();
		A.B b = a.new B();
//		A.B b = new A().new B();
		b.field1 = 3;
		b.method1();
		
		A.C c = new A.C();
		c.field1 = 3;
		c.method1();
		A.C.field2 = 3;
		A.C.method2();
		
		a.method();
	}
}
