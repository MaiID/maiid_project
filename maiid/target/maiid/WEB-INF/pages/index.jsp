<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<body>
<spring:url value="/artist" var="artist_url" htmlEncoding="true"/>
<spring:url value="/audience" var="audience_url" htmlEncoding="true"/>
<center>
	<h1>Maiid Engine</h1>
	<div style="margin:10px;"><object width="560" height="315"><param name="movie" value="//www.youtube-nocookie.com/v/dKrWyb9oJKU?version=3&amp;hl=en_US&autoplay=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube-nocookie.com/v/dKrWyb9oJKU?version=3&amp;hl=en_US" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object></div>
	<div>
		<a href="${artist_url}"><button style="width:70px;height:50px;margin:10px;">Artist</button></a>
		<a href="${audience_url}"><button style="width:70px;height:50px;margin:10px;">Audience</button></a>
	</div>
</center>
</body>
</html>
