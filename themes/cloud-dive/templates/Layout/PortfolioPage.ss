<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 banner_holder">
    <div class="container banner_content">
        <h1>$Title</h1>
        <span class="hidden-xs">$Blurb</span>
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

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 arrow_down_wrapper">
    <a href="#">
        <span class="glyphicon glyphicon-chevron-down"></span>
    </a>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 portfolio_desc_section">

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 portfolio_overview">
        <div class="container">
            $Content
        </div>
    </div>

    <div class="container">
        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
            $Tablet_desc
        </div>
        <div class="col-lg-1 col-md-1 col-sm-1"></div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <% if $Tablet_view %>
                <img src="$Tablet_view.URL">
            <% end_if %>
        </div>
    </div>

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 portfolio_desktop_desc">
        <div class="container">
            <% if $Desktop_view %>
                <img src="$Desktop_view.URL">
            <% end_if %>
            $Desktop_desc
            <% if $Website_url %>
                <a href="$Website_url" target="_blank">
                    <button>
                        <span>VISIT WEBSITE</span>
                        <%--<div class="btn_bground"></div>--%>
                    </button>
                </a>
            <% end_if %>
        </div>
    </div>

</div>

<!-- siblings nav -->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 portfolio_navigator">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
        <% if $PreviousSibling %>
            <a href="$PreviousSibling.Link">
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </div>
                <div class="col-lg-11 col-md-11 col-sm-11 hidden-xs">
                    <h4>$PreviousSibling.Title</h4>
                </div>
            </a>
        <% end_if %>
    </div>

    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 right">
        <% if $NextSibling %>
            <a href="$NextSibling.Link">
                <div class="col-lg-11 col-md-11 col-sm-11 hidden-xs">
                    <h4>$NextSibling.Title</h4>
                </div>
                <div class="col-lg-1 col-md-1 col-md-1 col-sm-1 col-xs-12">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </div>
            </a>
        <% end_if %>
    </div>
</div>

