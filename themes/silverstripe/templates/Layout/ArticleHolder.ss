<section id="main" class="wrapper">
	<div class="container">
    <header class="major special">
      <h2>Articles</h2>
    </header>
    <% loop $Children %>
      <div class="article-item">
        <h3 class="article-item__title"><a href="$Link">$Title</a></h3>
        <p>$Created.Nice</p>
        <div class="article-item__content">
          $Content.LimitWordCount(200)
        </div>
      </div>
    <% end_loop %>
  </div>
</section>