<%@ page import="com.horizontech.edu.academics.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'syllabus', 'error')} ">
	<label for="syllabus">
		<g:message code="course.syllabus.label" default="Syllabus" />
		
	</label>
	<g:textField name="syllabus" value="${courseInstance?.syllabus}"/>
</div>


