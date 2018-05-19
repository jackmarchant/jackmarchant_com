<section class="content-wrapper">
  <% loop $Children %>
    <div class="c-article-item">
      <h3 class="c-article-item__title"><a href="$Link">$Title</a></h3>
      <p class="c-article-item__date">$LastEdited.Format("d/M/YYYY")</p>
      <p class="article-item__content">$Content.LimitCharacters(250) <a href="$Link">read more</a></p>
    </div>
  <% end_loop %>
</section>