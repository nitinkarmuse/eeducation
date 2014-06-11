package com.horizontech.edu.academics

import com.horizontech.edu.Role
import com.horizontech.edu.LoginDetails
import com.horizontech.edu.UserInfo
import com.horizontech.edu.UserRole
import com.horizontech.edu.common.Address
import com.horizontech.edu.common.UserInfoService


import grails.plugin.springsecurity.annotation.Secured
@Secured(['ROLE_SUPER_USER'])
class InstituteController {
	static scaffold = Institute
	
	UserInfoService userInfoService;
	
	def temp(){
		log.error "in temp method"
		

		render userInfoService.getCurrentUser().institute.name
	}
	
}
