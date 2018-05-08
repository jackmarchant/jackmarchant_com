<section id="main" class="wrapper">
	<div class="container">
    <header class="major special">
      <h2>Articles</h2>
    </header>
    <% loop $Children %>
      <div class="article-item">
        <h3 class="article-item__title"><a href="$Link">$Title</a></h3>
        <p>$LastEdited.Format("d/M/YYYY")</p>
        <div class="article-item__content">
          $Content.LimitCharacters(50)
        </div>
      </div>
    <% end_loop %>
  </div>
</section>