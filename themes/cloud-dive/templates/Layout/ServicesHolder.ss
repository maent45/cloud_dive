<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    $Content
</div>
<% loop $Children %>
    <a href="$Link">
        <div class="col-lg-4 ServicesHolder_infoholder" id="$ID">
            <% if $Glyphicon %>
                <span class="glyphicon glyphicon-$Glyphicon"></span>
            <% end_if %>
            <h2>$Title</h2>
        </div>
    </a>
<% end_loop %>