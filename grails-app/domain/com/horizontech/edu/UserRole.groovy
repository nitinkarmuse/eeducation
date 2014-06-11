package com.horizontech.edu

import org.apache.commons.lang.builder.HashCodeBuilder

class UserRole implements Serializable {

	private static final long serialVersionUID = 1

	LoginDetails user
	Role role

	boolean equals(other) {
		if (!(other instanceof UserRole)) {
			return false
		}

		other.user?.id == user?.id &&
			other.role?.id == role?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (user) builder.append(user.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static UserRole get(long userId, long roleId) {
		UserRole.where {
			user == LoginDetails.load(userId) &&
			role == Role.load(roleId)
		}.get()
	}

	static UserRole create(LoginDetails user, Role role, boolean flush = false) {
		println(" create userrole called with $user $role")
		new UserRole(user: user, role: role).save(flush: flush, insert: true)
		println(" saved userrole called with $user $role")
	}

	static boolean remove(LoginDetails u, Role r, boolean flush = false) {

		int rowCount = UserRole.where {
			user == LoginDetails.load(u.id) &&
			role == Role.load(r.id)
		}.deleteAll()

		rowCount > 0
	}

	static void removeAll(LoginDetails u) {
		UserRole.where {
			user == LoginDetails.load(u.id)
		}.deleteAll()
	}

	static void removeAll(Role r) {
		UserRole.where {
			role == Role.load(r.id)
		}.deleteAll()
	}

	static mapping = {
		id composite: ['role', 'user']
		version false
	}
}
