package com.horizontech.edu

import grails.plugin.springsecurity.annotation.Secured

class AdminController {

	@Secured(['ROLE_SUPER_USER'])
    def index() {
		render "only super user has access to this"
	}
}
