<nav id="nav" class="nav">
	<ul>
		<% loop $Menu(1) %>
			<li class="nav__item $LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
		<% end_loop %>
	</ul>
</nav>
