
<%@ page import="strudanthack.SchoolClass" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'schoolClass.label', default: 'SchoolClass')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-schoolClass" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="schoolClass.className.label" default="Class Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: schoolClassInstance, field: "className")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="schoolClass.school.label" default="School" /></td>
				
				<td valign="top" class="value"><g:link controller="school" action="show" id="${schoolClassInstance?.school?.id}">${schoolClassInstance?.school?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="schoolClass.studens.label" default="Studens" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${schoolClassInstance.studens}" var="s">
						<li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link>
                            <g:link class="btn btn-primary" action="absent" id="${s.id}">Absent</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="schoolClass.teacher.label" default="Teacher" /></td>
				
				<td valign="top" class="value"><g:link controller="teacher" action="show" id="${schoolClassInstance?.teacher?.id}">${schoolClassInstance?.teacher?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
