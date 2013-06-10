<%@ page import="strudanthack.Teacher" %>



			<div class="control-group fieldcontain ${hasErrors(bean: teacherInstance, field: 'classes', 'error')} ">
				<label for="classes" class="control-label"><g:message code="teacher.classes.label" default="Classes" /></label>
				<div class="controls">
					<g:select name="classes" from="${strudanthack.SchoolClass.list()}" multiple="multiple" optionKey="id" size="5" value="${teacherInstance?.classes*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: teacherInstance, field: 'classes', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: teacherInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="teacher.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${teacherInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: teacherInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: teacherInstance, field: 'school', 'error')} required">
				<label for="school" class="control-label"><g:message code="teacher.school.label" default="School" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="school" name="school.id" from="${strudanthack.School.list()}" optionKey="id" required="" value="${teacherInstance?.school?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: teacherInstance, field: 'school', 'error')}</span>
				</div>
			</div>

