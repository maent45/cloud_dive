<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 banner_holder">
    <div class="container banner_content">
        <h1>$Title</h1>
        <p>$Blurb</p>
        <a href="contact-us">
            <button>
                <span>CONTACT US NOW</span>
                <div class="btn_bground"></div>
            </button>
        </a>
    </div>
    <div class="img_filter"></div>
    <img src="$Thumbnail_background.URL"/>
</div>

<div class="col-lg-12">
    <div class="container">
        $Content
    </div>
</div>

<div class="col-lg-12 portfolio_navigator">
    <div class="col-lg-6">
        <% if $PreviousSibling %>
            <a href="$PreviousSibling.Link">
                <div class="col-lg-1">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </div>
                <div class="col-lg-11">
                    <h4>$PreviousSibling.Title</h4>
                </div>
            </a>
        <% end_if %>
    </div>

    <div class="col-lg-6 right">
        <% if $NextSibling %>
            <a href="$NextSibling.Link">
                <div class="col-lg-11">
                    <h4>$NextSibling.Title</h4>
                </div>
                <div class="col-lg-1">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </div>
            </a>
        <% end_if %>
    </div>
</div>

