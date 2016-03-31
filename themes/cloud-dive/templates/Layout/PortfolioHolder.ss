<div class="col-lg-12 content">
    $Content
</div>

<% loop $Children %>
    <a href="$Link">
        <div class="col-lg-4 portfolio_holder">
           <h2>$Title</h2>
        </div>
    </a>
<% end_loop %>
