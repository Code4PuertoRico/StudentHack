<%@ page import="strudanthack.Student" %>



			<div class="control-group fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="student.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${studentInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: studentInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: studentInstance, field: 'address', 'error')} ">
				<label for="address" class="control-label"><g:message code="student.address.label" default="Address" /></label>
				<div class="controls">
					<g:textField name="address" value="${studentInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: studentInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: studentInstance, field: 'parents', 'error')} required">
				<label for="parents" class="control-label"><g:message code="student.parents.label" default="Parents" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="parents" name="parents.id" from="${strudanthack.Parent.list()}" optionKey="id" required="" value="${studentInstance?.parents?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: studentInstance, field: 'parents', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: studentInstance, field: 'present', 'error')} ">
				<label for="present" class="control-label"><g:message code="student.present.label" default="Present" /></label>
				<div class="controls">
					<bs:checkBox name="present" value="${studentInstance?.present}" />
					<span class="help-inline">${hasErrors(bean: studentInstance, field: 'present', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: studentInstance, field: 'school', 'error')} required">
				<label for="school" class="control-label"><g:message code="student.school.label" default="School" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="school" name="school.id" from="${strudanthack.School.list()}" optionKey="id" required="" value="${studentInstance?.school?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: studentInstance, field: 'school', 'error')}</span>
				</div>
			</div>

