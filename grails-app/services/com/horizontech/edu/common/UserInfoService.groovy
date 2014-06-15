package com.horizontech.edu.common

import com.horizontech.edu.UserInfo
import com.horizontech.edu.LoginDetails
import com.horizontech.edu.academics.Batch
import com.horizontech.edu.academics.Course
import grails.plugin.springsecurity.SpringSecurityService

class UserInfoService   {
	
	SpringSecurityService springSecurityService
 
	UserInfo getCurrentUser()  {
		LoginDetails details = springSecurityService.getCurrentUser()
		
		  UserInfo user = UserInfo.findByUsername(details.username)
		  //if (!user) throw new Exception( 'User not found. may be not logged in')
		  return user
 	}
	
	List<Course> getCourseList(){
		def qparams =  [:]
		qparams.sort = "name"
		return Course.findAllByInstitute(currentUser.institute, qparams)
	} 
	
	List<Batch> getBatchList(){
		def qparams = [:]
		qparams.sort = "name"
		return Batch.findAllByCourseInList(courseList, qparams)

	}
 }

	
