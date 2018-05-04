<section id="main" class="wrapper">
	<div class="container">

		<% if URLSegment != 'home' %>
			<header class="major special">
				<h2>$Title</h2>
			</header>
		<% end_if %>

		<div>$Content</div>

		<div>
			$Form
			$CommentsForm
		</div>

	</div>
</section>