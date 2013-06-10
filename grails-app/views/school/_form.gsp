<%@ page import="strudanthack.School" %>



			<div class="control-group fieldcontain ${hasErrors(bean: schoolInstance, field: 'schoolName', 'error')} required">
				<label for="schoolName" class="control-label"><g:message code="school.schoolName.label" default="School Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="schoolName" required="" value="${schoolInstance?.schoolName}"/>
					<span class="help-inline">${hasErrors(bean: schoolInstance, field: 'schoolName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: schoolInstance, field: 'district', 'error')} required">
				<label for="district" class="control-label"><g:message code="school.district.label" default="District" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="district" required="" value="${schoolInstance?.district}"/>
					<span class="help-inline">${hasErrors(bean: schoolInstance, field: 'district', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: schoolInstance, field: 'address', 'error')} ">
				<label for="address" class="control-label"><g:message code="school.address.label" default="Address" /></label>
				<div class="controls">
					<g:textField name="address" value="${schoolInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: schoolInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: schoolInstance, field: 'schoolClasses', 'error')} ">
				<label for="schoolClasses" class="control-label"><g:message code="school.schoolClasses.label" default="School Classes" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${schoolInstance?.schoolClasses?}" var="s">
    <li><g:link controller="schoolClass" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="schoolClass" action="create" params="['school.id': schoolInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'schoolClass.label', default: 'SchoolClass')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: schoolInstance, field: 'schoolClasses', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: schoolInstance, field: 'students', 'error')} ">
				<label for="students" class="control-label"><g:message code="school.students.label" default="Students" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${schoolInstance?.students?}" var="s">
    <li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="student" action="create" params="['school.id': schoolInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'student.label', default: 'Student')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: schoolInstance, field: 'students', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: schoolInstance, field: 'teachers', 'error')} ">
				<label for="teachers" class="control-label"><g:message code="school.teachers.label" default="Teachers" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${schoolInstance?.teachers?}" var="t">
    <li><g:link controller="teacher" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="teacher" action="create" params="['school.id': schoolInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'teacher.label', default: 'Teacher')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: schoolInstance, field: 'teachers', 'error')}</span>
				</div>
			</div>

