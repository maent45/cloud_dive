<div class="col-lg-12">
    <% loop $Banners %>
        <div class="col-lg-6">
            $Content
        </div>
        <div class="col-lg-6">
            $Image
        </div>
    <% end_loop %>
</div>


$Content

<!-- loop all services -->
<% loop $Services %>
    <!-- loop all children of services -->
    <% loop $Children.Limit($Homepage_display_limit) %>
        <a href="$Link">
            <div class="col-lg-4 service_holder" id="$ID">
                <div class="col-lg-12">
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
<div class="col-lg-12 contact">
    <% with $showForm %>
        <div class="col-lg-6">
            $Content
        </div>
        <div class="col-lg-6">
            $Form
        </div>
    <% end_with %>
</div>

