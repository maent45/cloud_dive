<h2>HomePage Section</h2>

$Content

<!-- loop all services -->
<% loop $Services %>

    <!-- loop all children of services -->
    <% loop $Children %>
        $Title
        <a href="$Link">$Title</a>
    <% end_loop %>

<% end_loop %>

<!-- render contact form -->
<% with $showForm %>
    <h1>Contact Form</h1>
    $Form
<% end_with %>