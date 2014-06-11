
<%@ page import="com.horizontech.edu.academics.Batch" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batch.label', default: 'Batch')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-batch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-batch" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'batch.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'batch.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'batch.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="fee" title="${message(code: 'batch.fee.label', default: 'Fee')}" />
					
						<g:sortableColumn property="feeSchedule" title="${message(code: 'batch.feeSchedule.label', default: 'Fee Schedule')}" />
					
						<th><g:message code="batch.course.label" default="Course" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${batchInstanceList}" status="i" var="batchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${batchInstance.id}">${fieldValue(bean: batchInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${batchInstance.startDate}" /></td>
					
						<td><g:formatDate date="${batchInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: batchInstance, field: "fee")}</td>
					
						<td>${fieldValue(bean: batchInstance, field: "feeSchedule")}</td>
					
						<td>${fieldValue(bean: batchInstance, field: "course.name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${batchInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
