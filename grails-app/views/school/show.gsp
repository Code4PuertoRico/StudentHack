
<%@ page import="strudanthack.School" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'school.label', default: 'School')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-school" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="school.schoolName.label" default="School Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "schoolName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="school.district.label" default="District" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "district")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="school.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "address")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="school.schoolClasses.label" default="School Classes" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${schoolInstance.schoolClasses}" var="s">
						<li><g:link controller="schoolClass" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="school.students.label" default="Students" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${schoolInstance.students}" var="s">
						<li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="school.teachers.label" default="Teachers" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${schoolInstance.teachers}" var="t">
						<li><g:link controller="teacher" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
