<div class="col-lg-12 content">
    $Content
</div>

<% loop $Children %>
    <a href="$Link">
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 portfolio_holder">
            $Thumbnail_background
            <div class="portfolio_holder_content">
                <h2>$Title</h2>
            </div>
        </div>
    </a>
<% end_loop %>
