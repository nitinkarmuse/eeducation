<%@ page import="com.horizontech.edu.academics.Batch" %>



<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="batch.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${batchInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="batch.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${batchInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="batch.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${batchInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'fee', 'error')} required">
	<label for="fee">
		<g:message code="batch.fee.label" default="Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fee" value="${fieldValue(bean: batchInstance, field: 'fee')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'feeSchedule', 'error')} required">
	<label for="feeSchedule">
		<g:message code="batch.feeSchedule.label" default="Fee Schedule" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="feeSchedule" from="${com.horizontech.edu.academics.FeeSchedule?.values()}" keys="${com.horizontech.edu.academics.FeeSchedule.values()*.name()}" required="" value="${batchInstance?.feeSchedule?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="batch.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${com.horizontech.edu.academics.Course.list()}" optionKey="id" optionValue="name" required="true" value="${batchInstance?.course?.name}" class="many-to-one"/>
</div>

