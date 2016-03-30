<h2>HomePage Section</h2>

$Content

<!-- loop all services -->
<% loop $Services %>
    <!-- loop all children of services -->
    <% loop $Children.Limit($Homepage_display_limit) %>
        <div class="col-lg-4 service_holder">
            <div class="col-lg-12">
                $Title
            </div>
            <div class="col-lg-12">
                <a href="$Link">$Title</a>
            </div>
        </div>
    <% end_loop %>

<% end_loop %>

<!-- render contact form -->
<div class="col-lg-12">
    <% with $showForm %>
        <h1>Contact Form</h1>
        $Content
        $Form
    <% end_with %>
</div>

