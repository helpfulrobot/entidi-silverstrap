<article class="row">
	<div class="page-header">
		<h1><% if $ArchiveYear %>
			<%t Blog.Archive "Archive" %>:<% if $ArchiveDay %>
			$ArchiveDate.Nice<% else_if $ArchiveMonth %>
			$ArchiveDate.format("F, Y")<% else %>
			$ArchiveDate.format("Y")<% end_if %><% else_if $CurrentTag %>
			<%t Blog.Tag "Tag" %>: $CurrentTag.Title<% else_if $CurrentCategory %>
			<%t Blog.Category "Category" %>: $CurrentCategory.Title<% else %>
			$Title<% end_if %>
		</h1>
	</div>
	<div class="content">
		$Content
	</div><% if $PaginatedList.Exists %><% loop $PaginatedList %>
	<% include PostSummary %><% end_loop %><% else %>
	<p><%t Blog.NoPosts "There are no posts" %></p>
	<% end_if %>
</article>
