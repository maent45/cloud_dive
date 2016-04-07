<div class="col-lg-12 banner">
    <div class="col-lg-6 banner_left">
        $Banner_caption
        <a href="#contact">
            <button>
                CONTACT US
            </button>
        </a>
    </div>
    <% loop $Banners %>
        <div class="col-lg-6 banner_right">
            $Image
        </div>
    <% end_loop %>
</div>

<div class="col-lg-12 content">
    $Content
</div>

<!-- loop all services -->
<% loop $Services %>
    <!-- loop all children of services -->
    <% loop $Children.Limit($Services_display_limit) %>
        <a href="$Link">
            <div class="col-lg-4 service_holder" id="$ID">
                <div class="col-lg-12">
                    <% if $Glyphicon %>
                        <span class="glyphicon glyphicon-$Glyphicon"></span>
                    <% end_if %>
                    <h2>$Title</h2>
                </div>
                <div class="col-lg-12 service_holder_overlay" id="$ID">
                    $Content
                </div>
            </div>
        </a>
    <% end_loop %>

<% end_loop %>

<!-- render contact form -->
<div class="col-lg-12 contact" id="contact">
    <% with $showForm %>
        <div class="col-lg-6">
            $Content
        </div>
        <div class="col-lg-6">
            $Form
        </div>
    <% end_with %>
</div>

