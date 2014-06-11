
<%@ page import="com.horizontech.edu.AdminUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'adminUser.label', default: 'AdminUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-adminUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-adminUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'adminUser.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'adminUser.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'adminUser.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'adminUser.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="birthDate" title="${message(code: 'adminUser.birthDate.label', default: 'Birth Date')}" />
					
						<g:sortableColumn property="nationality" title="${message(code: 'adminUser.nationality.label', default: 'Nationality')}" />
					
						<g:sortableColumn property="institute" title="${message(code: 'adminUser.institute.label', default: 'Institute')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${adminUserInstanceList}" status="i" var="adminUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${adminUserInstance.id}">${fieldValue(bean: adminUserInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: adminUserInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: adminUserInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: adminUserInstance, field: "gender")}</td>
					
						<td><g:formatDate date="${adminUserInstance.birthDate}" /></td>
					
						<td>${fieldValue(bean: adminUserInstance, field: "nationality")}</td>
						
						<td>${fieldValue(bean: adminUserInstance, field: "institute.name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${adminUserInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
