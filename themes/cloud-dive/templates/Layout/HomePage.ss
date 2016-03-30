$Content

<!-- loop all services -->
<% loop $Services %>
    <!-- loop all children of services -->
    <% loop $Children.Limit($Homepage_display_limit) %>
        <div class="col-lg-4 service_holder">
            <div class="col-lg-12">
                <h2>$Title</h2>
            </div>
            <div class="col-lg-12">
                <a href="$Link">$Title</a>
            </div>
        </div>
    <% end_loop %>

<% end_loop %>

<!-- render contact form -->
<div class="col-lg-12 contact">
    <div class="col-lg-6">

    </div>
    <div class="col-lg-6">
        <% with $showForm %>
            $Content
            $Form
        <% end_with %>
    </div>
</div>

