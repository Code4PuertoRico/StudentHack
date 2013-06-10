
<%@ page import="strudanthack.Student" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-student" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="student.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: studentInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="student.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: studentInstance, field: "address")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="student.parents.label" default="Parents" /></td>
				
				<td valign="top" class="value"><g:link controller="parent" action="show" id="${studentInstance?.parents?.id}">${studentInstance?.parents?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="student.present.label" default="Present" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${studentInstance?.present}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="student.school.label" default="School" /></td>
				
				<td valign="top" class="value"><g:link controller="school" action="show" id="${studentInstance?.school?.id}">${studentInstance?.school?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
