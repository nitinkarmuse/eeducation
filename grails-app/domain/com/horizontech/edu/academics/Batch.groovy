package com.horizontech.edu.academics

class Batch {
	
	String name
	Date startDate
	Date endDate
	double fee
	FeeSchedule feeSchedule
	Course course

    static constraints = {
		name blank: false
		startDate blank: false
		endDate blank: false
		fee blank: false
		feeSchedule blank: false
		course()
    }
}
