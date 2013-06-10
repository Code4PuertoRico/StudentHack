
<%@ page import="strudanthack.Parent" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'parent.label', default: 'Parent')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-parent" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parentInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.phoneNumber.label" default="Phone Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parentInstance, field: "phoneNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parentInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parentInstance, field: "address")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="parent.students.label" default="Students" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${parentInstance.students}" var="s">
						<li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
