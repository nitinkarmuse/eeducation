package com.horizontech.edu.academics

import com.horizontech.edu.common.Address

class Institute {
	long id
	String name
	String addressLine1
	String addressLine2
	String city
	String postcode
	String state
	String country

	boolean active
	
	static constraints = {
		name  blank: false, unique: true
		addressLine1 blank: false
		addressLine2()
		city blank: false
		postcode blank: false
		state blank: false
		country blank: false
		active default: true
	}

}
