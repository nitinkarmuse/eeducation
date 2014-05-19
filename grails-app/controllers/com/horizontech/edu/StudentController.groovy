package com.horizontech.edu

import grails.plugin.springsecurity.annotation.Secured


@Secured(['ROLE_SUPER_USER', 'ROLE_ADMIN'])
class StudentController {

    def add() { }
}
