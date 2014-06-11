package com.horizontech.edu

import com.horizontech.edu.academics.Institute
import com.horizontech.edu.common.Address


class UserInfo {
	
	String username
    long id
	String firstName
	String middleName
	String lastName
	Institute institute
	String email
	String gender
	Date birthDate
	String nationality
	String religion
	Address address
  

	// for composition
	static embedded = ['address']

	
	static constraints = {
		firstName blank: false
		middleName blank : false
		lastName blank : false
		gender ()
		birthDate blank: false
		nationality blank : false
		religion()
		address ()
		institute()
		
    }
}
