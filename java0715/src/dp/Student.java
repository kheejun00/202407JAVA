package dp;

import java.util.Vector;

public class Student {
	private Professor advisor;
	private String name;
	private Vector<Course> courses;
	
	
	public Student() {}
	public Student(String name) {
//		super();
		this.name = name;
		courses = new Vector<Course>();	// 오류 지점 : NullPointerException
	}
	

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void registerCourse(Course course) {
		courses.add(course);
		course.addStudent(this);
	}
	
	public void dropCourse(Course course) {
		if(courses.contains(course)) {
			courses.remove(course);
		}
	}

	@Override
	public String toString() {
		return "Student [advisor=" + advisor + ", name=" + name + ", courses=" + courses + "]";
	}
	public void advice(String msg) {
		System.out.println(msg);
	}

	public Professor getAdvisor() {
		return advisor;
	}

	public void setAdvisor(Professor advisor) {
		this.advisor = advisor;
	}
	
}