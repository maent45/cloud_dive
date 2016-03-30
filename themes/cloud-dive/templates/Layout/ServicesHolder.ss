<h1>Services Holder Page</h1>

<% loop $Children %>
    <div class="col-lg-4">
        $Title
        <a href="$Link">$Title</a>
    </div>
<% end_loop %>