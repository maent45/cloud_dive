<div class="col-lg-12 content">
    $Content
</div>

<% loop $Children %>
    <a href="$Link">
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 portfolio_holder" id="$ID">
            <img src="$Thumbnail_background.URL" id="$ID">
            <div class="col-lg-12 portfolio_holder_content">
                <h2>$Title</h2>
                <div class="desc" id="$ID">
                    $Content
                </div>
            </div>
        </div>
    </a>
<% end_loop %>
