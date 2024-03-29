<%@ page import="gtunes.Album" %>



<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="album.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${albumInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'yearOfRelease', 'error')} required">
	<label for="yearOfRelease">
		<g:message code="album.yearOfRelease.label" default="Year Of Release" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="yearOfRelease" type="number" value="${albumInstance.yearOfRelease}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'producer', 'error')} ">
	<label for="producer">
		<g:message code="album.producer.label" default="Producer" />
		
	</label>
	<g:textField name="producer" value="${albumInstance?.producer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'songs', 'error')} ">
	<label for="songs">
		<g:message code="album.songs.label" default="Songs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${albumInstance?.songs?}" var="s">
    <li><g:link controller="song" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="song" action="create" params="['album.id': albumInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'song.label', default: 'Song')])}</g:link>
</li>
</ul>

</div>

