<nav id="nav" class="c-nav">
	<ul>
		<% loop $Menu(1) %>
			<li class="c-nav__item $LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
		<% end_loop %>
	</ul>
</nav>
