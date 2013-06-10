
<%@ page import="strudanthack.Teacher" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-teacher" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'teacher.name.label', default: 'Name')}" />
			
				<th><g:message code="teacher.school.label" default="School" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${teacherInstanceList}" status="i" var="teacherInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${teacherInstance.id}">${fieldValue(bean: teacherInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: teacherInstance, field: "school")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${teacherInstanceTotal}" />
	</div>
</section>

</body>

</html>
