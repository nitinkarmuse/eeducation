import com.horizontech.edu.Role
import com.horizontech.edu.User
import com.horizontech.edu.UserRole

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def studentRole = new Role(authority: 'ROLE_STUDENT').save(flush: true)
		def superUserRole = new Role(authority: 'ROLE_SUPER_USER').save(flush: true)
		def teacherRole = new Role(authority: 'ROLE_TEACHER').save(flush: true)
		def parentRole = new Role(authority: 'ROLE_PARENT').save(flush: true)
		
		def adminUser = new User(username: 'admin', password: 'admin').save(flush: true)
		def studentUser = new User(username: 'student', password: 'student').save(flush: true)
		def superUser = new User(username: 'super', password: 'super!23').save(flush: true)
		def teacherUser = new User(username: 'teacher', password: 'teacher').save(flush: true)
		def parentUser = new User(username: 'parent', password: 'parent').save(flush: true)
		
		UserRole.create adminUser, adminRole, true
		UserRole.create studentUser, studentRole, true
		UserRole.create superUser, superUserRole, true
		UserRole.create teacherUser, teacherRole, true
		UserRole.create parentUser, parentRole, true
		
		assert User.count() == 5
		assert Role.count() == 5
		assert UserRole.count() == 5

    }
    def destroy = {
    }
}
