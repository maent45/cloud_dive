<h2>HomePage Section</h2>

$Content

<!-- loop all services -->
<% loop $Services %>
    <% loop $Children %>
        $Title
        <a href="$Link">$Title</a>
    <% end_loop %>
<% end_loop %>