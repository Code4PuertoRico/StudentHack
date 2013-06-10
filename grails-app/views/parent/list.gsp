
<%@ page import="strudanthack.Parent" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'parent.label', default: 'Parent')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-parent" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'parent.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="phoneNumber" title="${message(code: 'parent.phoneNumber.label', default: 'Phone Number')}" />
			
				<g:sortableColumn property="email" title="${message(code: 'parent.email.label', default: 'Email')}" />
			
				<g:sortableColumn property="address" title="${message(code: 'parent.address.label', default: 'Address')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${parentInstanceList}" status="i" var="parentInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${parentInstance.id}">${fieldValue(bean: parentInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: parentInstance, field: "phoneNumber")}</td>
			
				<td>${fieldValue(bean: parentInstance, field: "email")}</td>
			
				<td>${fieldValue(bean: parentInstance, field: "address")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${parentInstanceTotal}" />
	</div>
</section>

</body>

</html>
