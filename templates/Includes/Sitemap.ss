<div class="well">
<div class="container">
	<div class="row">
		<div class="span12"><% loop Menu(1) %><% if Children %>
			<div class="span2" style="width: 15%;">
				<ul class="unstyled">
					<li><strong><a href="$Link" title="$Title">$MenuTitle</a></strong><li>
					<li class="divider-vertical"></li><% loop Children %>
					<li><a href="$Link" title="$Title">$MenuTitle</a><li><% end_loop %>
				</ul>
			</div><% end_if %><% end_loop %>
		</div>
	</div>
</div>
</div>