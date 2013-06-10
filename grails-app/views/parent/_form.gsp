<%@ page import="strudanthack.Parent" %>



			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="parent.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${parentInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'phoneNumber', 'error')} required">
				<label for="phoneNumber" class="control-label"><g:message code="parent.phoneNumber.label" default="Phone Number" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="phoneNumber" required="" value="${parentInstance?.phoneNumber}"/>
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'phoneNumber', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'email', 'error')} ">
				<label for="email" class="control-label"><g:message code="parent.email.label" default="Email" /></label>
				<div class="controls">
					<g:field type="email" name="email" value="${parentInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'address', 'error')} ">
				<label for="address" class="control-label"><g:message code="parent.address.label" default="Address" /></label>
				<div class="controls">
					<g:textField name="address" value="${parentInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parentInstance, field: 'students', 'error')} ">
				<label for="students" class="control-label"><g:message code="parent.students.label" default="Students" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${parentInstance?.students?}" var="s">
    <li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="student" action="create" params="['parent.id': parentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'student.label', default: 'Student')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: parentInstance, field: 'students', 'error')}</span>
				</div>
			</div>

