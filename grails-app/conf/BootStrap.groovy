import com.horizontech.edu.Role
import com.horizontech.edu.LoginDetails
import com.horizontech.edu.UserRole
import com.horizontech.edu.UserInfo
import com.horizontech.edu.academics.Institute
import com.horizontech.edu.common.Address

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def studentRole = new Role(authority: 'ROLE_STUDENT').save(flush: true)
		def superUserRole = new Role(authority: 'ROLE_SUPER_USER').save(flush: true)
		def teacherRole = new Role(authority: 'ROLE_TEACHER').save(flush: true)
		def parentRole = new Role(authority: 'ROLE_PARENT').save(flush: true)
		
		if(UserInfo.findByUsername('super') == null){
			log.error "creating super user"
			def superUser = new LoginDetails(username: 'super', password: 'super!23').save(flush: true)
			superUser = LoginDetails.findByUsername('super')
			UserRole.create superUser, superUserRole, true
			Institute ins = new Institute(name: 'super', addressLine1: '5',  addressLine2: 'Corbridge drive', city: 'Luton', postcode: 'LU2 9UF',
				state: 'Bedfordshire', country: 'UK', active: true).save(flush: true)
			ins = Institute.findByName('super')
			
			
			Address add	= new Address( line1: '5 Corbridge drive',  line2: '', city:'Luton', postcode:'LU2 9UF',
				state:'Bedfordshire', country:'UK')
			UserInfo superUserI = new UserInfo(
				username:'super',firstName:'Nitin', middleName: 'Prakashrao', lastName:'Karmuse',
				email:'nkarmuse@gamil.com', institute: ins, gender: 'Male', birthDate: new Date(),
				nationality: 'British', religion:'Hindu', address: add
				 ).save(flush: true)
		
		}

    }
    def destroy = {
    }
}
