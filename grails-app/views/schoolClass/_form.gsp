<%@ page import="strudanthack.SchoolClass" %>



			<div class="control-group fieldcontain ${hasErrors(bean: schoolClassInstance, field: 'className', 'error')} required">
				<label for="className" class="control-label"><g:message code="schoolClass.className.label" default="Class Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="className" required="" value="${schoolClassInstance?.className}"/>
					<span class="help-inline">${hasErrors(bean: schoolClassInstance, field: 'className', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: schoolClassInstance, field: 'school', 'error')} required">
				<label for="school" class="control-label"><g:message code="schoolClass.school.label" default="School" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="school" name="school.id" from="${strudanthack.School.list()}" optionKey="id" required="" value="${schoolClassInstance?.school?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: schoolClassInstance, field: 'school', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: schoolClassInstance, field: 'studens', 'error')} ">
				<label for="studens" class="control-label"><g:message code="schoolClass.studens.label" default="Studens" /></label>
				<div class="controls">
					<g:select name="studens" from="${strudanthack.Student.list()}" multiple="multiple" optionKey="id" size="5" value="${schoolClassInstance?.studens*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: schoolClassInstance, field: 'studens', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: schoolClassInstance, field: 'teacher', 'error')} required">
				<label for="teacher" class="control-label"><g:message code="schoolClass.teacher.label" default="Teacher" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="teacher" name="teacher.id" from="${strudanthack.Teacher.list()}" optionKey="id" required="" value="${schoolClassInstance?.teacher?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: schoolClassInstance, field: 'teacher', 'error')}</span>
				</div>
			</div>

