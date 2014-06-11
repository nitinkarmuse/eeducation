package com.horizontech.edu.common

import com.horizontech.edu.UserInfo
import com.horizontech.edu.LoginDetails
import grails.plugin.springsecurity.SpringSecurityService

class UserInfoService   {
	
	SpringSecurityService springSecurityService
 
	UserInfo getCurrentUser()  {
		LoginDetails details = springSecurityService.getCurrentUser()
		
		println " user = "+ details.username
 		  UserInfo user = UserInfo.findByUsername("super")
		  //if (!user) throw new Exception( 'User not found. may be not logged in')
		  return user
 	}
 }

	
