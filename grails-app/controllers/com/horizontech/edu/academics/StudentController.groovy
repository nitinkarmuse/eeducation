package com.horizontech.edu.academics

import com.horizontech.edu.common.UserInfoService;

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_SUPER_USER', 'ROLE_ADMIN'])
class StudentController {
	
	UserInfoService userInfoService
 
	def details(){
		def udetails = userInfoService.loadInfo('admin')
		render udetails.username
	}
	
    def add() { }
	
}
