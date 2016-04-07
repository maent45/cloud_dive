<div class="col-lg-12 content">
    $Content
</div>

<% loop $Children %>
    <a href="$Link">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 portfolio_holder" id="$ID">
            <div class="portfolio_holder_overlay"></div>
            <% if $Thumbnail_background %>
                <img src="$Thumbnail_background.URL" id="$ID">
            <% end_if %>
            <div class="col-lg-12 portfolio_holder_content">
                <h2>$Title</h2>
                <div class="desc" id="$ID">
                    $Blurb
                </div>
                <button>
                    <span>READ MORE</span>
                    <div class="btn_bground"></div>
                </button>
            </div>
        </div>
    </a>
<% end_loop %>
