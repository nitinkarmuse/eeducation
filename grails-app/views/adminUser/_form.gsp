<%@ page import="com.horizontech.edu.AdminUser" %>



<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="adminUser.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${adminUserInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="adminUser.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${adminUserInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="adminUser.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${adminUserInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="adminUser.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" value="${adminUserInstance?.gender}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="adminUser.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${adminUserInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'nationality', 'error')} required">
	<label for="nationality">
		<g:message code="adminUser.nationality.label" default="Nationality" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nationality" required="" value="${adminUserInstance?.nationality}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'religion', 'error')} ">
	<label for="religion">
		<g:message code="adminUser.religion.label" default="Religion" />
		
	</label>
	<g:textField name="religion" value="${adminUserInstance?.religion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'institute', 'error')} required">
	<label for="institute">
		<g:message code="adminUser.institute.label" default="Institute" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="institute" name="institute.id" from="${com.horizontech.edu.academics.Institute.list()}" optionKey="id" optionValue="name" required="" value="${adminUserInstance?.institute?.name}" class="many-to-one"/>
</div>
<fieldset class="embedded"><legend><g:message code="adminUser.address.label" default="Address" /></legend>


<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'address.line1', 'error')} ">
	<label for="address.line1">
		<g:message code="adminUser.address.line1.label" default="Line1" />
		
	</label>
	<g:textField name="address.line1" value="${adminUserInstance?.address?.line1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'address.line2', 'error')} ">
	<label for="address.line2">
		<g:message code="adminUser.address.line2.label" default="Line2" />
		
	</label>
	<g:textField name="address.line2" value="${adminUserInstance?.address?.line2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'address.city', 'error')} ">
	<label for="address.city">
		<g:message code="adminUser.address.city.label" default="City" />
		
	</label>
	<g:textField name="address.city" value="${adminUserInstance?.address?.city}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'address.postcode', 'error')} ">
	<label for="address.postcode">
		<g:message code="adminUser.address.postcode.label" default="Postcode" />
		
	</label>
	<g:textField name="address.postcode" value="${adminUserInstance?.address?.postcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'address.state', 'error')} ">
	<label for="address.state">
		<g:message code="adminUser.address.state.label" default="State" />
		
	</label>
	<g:textField name="address.state" value="${adminUserInstance?.address?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'address.country', 'error')} ">
	<label for="address.country">
		<g:message code="adminUser.address.country.label" default="Country" />
		
	</label>
	<g:textField name="address.country" value="${adminUserInstance?.address?.country}"/>
</div>


</fieldset>
<div class="fieldcontain ${hasErrors(bean: adminUserInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="adminUser.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${adminUserInstance?.email}"/>
</div>


