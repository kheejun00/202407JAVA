package java0718;

public class ChildEx {
	public static void main(String[] args) {
		Parent parent = new Child();
		anyMethod(parent);
		
		
		
		if(parent instanceof Child) {
			System.out.println("타입 변환 가능");
			Child child = (Child) parent;
			System.out.println(child);
		} else {
			System.out.println("타입 변환 불가능");
		}
		
	
//		Other other = parent;
	}
	
	public static void anyMethod(Parent parent) {
		parent.method2();
	}
	
}

