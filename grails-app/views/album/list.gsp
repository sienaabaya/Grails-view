
<%@ page import="gtunes.Album" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'album.label', default: 'Album')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>
		<a href="#list-album" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-album" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'album.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="yearOfRelease" title="${message(code: 'album.yearOfRelease.label', default: 'Year Of Release')}" />
					
						<g:sortableColumn property="producer" title="${message(code: 'album.producer.label', default: 'Producer')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${albumInstanceList}" status="i" var="albumInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${albumInstance.id}">${fieldValue(bean: albumInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: albumInstance, field: "yearOfRelease")}</td>
					
						<td><g:link action="show" id="${albumInstance.id}">${fieldValue(bean: albumInstance, field: "producer")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${albumInstanceTotal}" />
			</div>
		</div>
    %{--<g:each in="${albumInstanceList}" var="i">--}%
        %{--${i?.producer}--}%
    %{--</g:each>--}%
    <g:link action="list" params="[max:5,sort: 'title', order: 'asc']">first 5</g:link>
    %{--<g:select name="selectAlbum" from="${albumInstanceList.title}"/>--}%
    %{--<g:currencySelect name="currencySelect"></g:currencySelect>--}%
    %{--<g:datePicker name="myDate" value="${new Date()}" />--}%
    <g:paginate action="list" total="${albumInstanceTotal}" maxsteps="0"/>

    </body>
</html>
