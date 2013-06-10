
<%@ page import="strudanthack.SchoolClass" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'schoolClass.label', default: 'SchoolClass')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-schoolClass" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="className" title="${message(code: 'schoolClass.className.label', default: 'Class Name')}" />
			
				<th><g:message code="schoolClass.school.label" default="School" /></th>
			
				<th><g:message code="schoolClass.teacher.label" default="Teacher" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${schoolClassInstanceList}" status="i" var="schoolClassInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${schoolClassInstance.id}">${fieldValue(bean: schoolClassInstance, field: "className")}</g:link></td>
			
				<td>${fieldValue(bean: schoolClassInstance, field: "school")}</td>
			
				<td>${fieldValue(bean: schoolClassInstance, field: "teacher")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${schoolClassInstanceTotal}" />
	</div>
</section>

</body>

</html>
