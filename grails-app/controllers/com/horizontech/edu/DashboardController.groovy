package com.horizontech.edu
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_SUPER_USER', 'ROLE_ADMIN', 'ROLE_STUDENT', 'ROLE_TEACHER', 'ROLE_PARENT'])
class DashboardController {

    def index() { }
}
