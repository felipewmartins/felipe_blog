<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
		<h1>Blog</h1>
	</div>
	<%published_posts.each {post ->%>
		<a href="${post.uri}"><h1>${post.title}</h1></a>
		<p>${post.date.format("dd MMMM yyyy")}</p>
		<p>${post.body}</p>
  	<%}%>
	
	<hr />
	
	<p>Posts antigos estão disponíveis em: <a href="/${config.archive_file}">Arquivo</a>.</p>

<%include "footer.gsp"%>
