
<%@ page import="strudanthack.Student" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-student" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'student.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="address" title="${message(code: 'student.address.label', default: 'Address')}" />
			
				<th><g:message code="student.parents.label" default="Parents" /></th>
			
				<g:sortableColumn property="present" title="${message(code: 'student.present.label', default: 'Present')}" />
			
				<th><g:message code="student.school.label" default="School" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${studentInstanceList}" status="i" var="studentInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: studentInstance, field: "address")}</td>
			
				<td>${fieldValue(bean: studentInstance, field: "parents")}</td>
			
				<td><g:formatBoolean boolean="${studentInstance.present}" /></td>
			
				<td>${fieldValue(bean: studentInstance, field: "school")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${studentInstanceTotal}" />
	</div>
</section>

</body>

</html>
