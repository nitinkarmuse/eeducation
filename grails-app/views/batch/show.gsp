
<%@ page import="com.horizontech.edu.academics.Batch" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batch.label', default: 'Batch')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-batch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-batch" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list batch">
			
				<g:if test="${batchInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="batch.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${batchInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="batch.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${batchInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="batch.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${batchInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchInstance?.fee}">
				<li class="fieldcontain">
					<span id="fee-label" class="property-label"><g:message code="batch.fee.label" default="Fee" /></span>
					
						<span class="property-value" aria-labelledby="fee-label"><g:fieldValue bean="${batchInstance}" field="fee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchInstance?.feeSchedule}">
				<li class="fieldcontain">
					<span id="feeSchedule-label" class="property-label"><g:message code="batch.feeSchedule.label" default="Fee Schedule" /></span>
					
						<span class="property-value" aria-labelledby="feeSchedule-label"><g:fieldValue bean="${batchInstance}" field="feeSchedule"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="batch.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${batchInstance?.course?.id}">${batchInstance?.course?.name.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${batchInstance?.id}" />
					<g:link class="edit" action="edit" id="${batchInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
