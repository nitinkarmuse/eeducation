package com.horizontech.edu.common

import com.horizontech.edu.academics.Institute

class Address {
	
	String line1
	String line2
	String city
    String postcode
	String state
	String country
	

    static constraints = {
		
		line1 blank: false
		line2()
		city blank: false
		postcode blank: false
		state blank: false
		country blank: false

    }
}
