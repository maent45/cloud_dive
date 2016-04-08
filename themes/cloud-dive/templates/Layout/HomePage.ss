<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 banner">
    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 banner_left">
        $Banner_caption
        <a href="#" class="scroll_to_contact">
            <button>
                <span>CONTACT US</span>
                <div class="btn_bground"></div>
            </button>
        </a>
    </div>

    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 banner_right">
        <div id="carousel_fade" class="carousel slide carousel-fade">
            <div class="carousel-inner">
                <% if $Banners %>
                    <% loop $Banners %>
                        <div class="item <% if Pos() == 1 %>active<% end_if %>">
                            <img src="$Image.URL" class="img-responsive">
                        </div>
                    <% end_loop %>
                <% end_if %>
            </div>
        </div>
    </div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 content">
    $Content
</div>

<!-- loop all services -->
<% loop $Services %>
    <!-- loop all children of services -->
    <% loop $Children.Limit($Services_display_limit) %>
        <a href="$Link">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 service_holder" id="$ID">
                <div class="col-lg-12">
                    <% if $Glyphicon %>
                        <span class="glyphicon glyphicon-$Glyphicon"></span>
                    <% end_if %>
                    <h2>$Title</h2>
                    $Services_offered
                </div>
                <div class="col-lg-12 service_holder_overlay" id="$ID">
                    $Blurb
                    <br/>
                    <button>
                        <span>READ MORE</span>
                        <div class="btn_bground"></div>
                    </button>
                </div>
            </div>
        </a>
    <% end_loop %>

<% end_loop %>

<!-- render contact form -->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contact" id="contact">
    <% with $showForm %>
        <div class="col-lg-6">
            $Content
        </div>
        <div class="col-lg-6">
            $Form
        </div>
    <% end_with %>
</div>

