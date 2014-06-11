package com.horizontech.edu.academics

class Course {

	long id
	String name
	String syllabus
	Institute institute
	
    static constraints = {
		name blank: false
		syllabus()
		institute()
	}
}