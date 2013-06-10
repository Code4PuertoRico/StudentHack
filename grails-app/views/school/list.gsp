
<%@ page import="strudanthack.School" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'school.label', default: 'School')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-school" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="schoolName" title="${message(code: 'school.schoolName.label', default: 'School Name')}" />
			
				<g:sortableColumn property="district" title="${message(code: 'school.district.label', default: 'District')}" />
			
				<g:sortableColumn property="address" title="${message(code: 'school.address.label', default: 'Address')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${schoolInstanceList}" status="i" var="schoolInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${schoolInstance.id}">${fieldValue(bean: schoolInstance, field: "schoolName")}</g:link></td>
			
				<td>${fieldValue(bean: schoolInstance, field: "district")}</td>
			
				<td>${fieldValue(bean: schoolInstance, field: "address")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${schoolInstanceTotal}" />
	</div>
</section>

</body>

</html>
