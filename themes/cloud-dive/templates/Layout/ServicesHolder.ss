<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    $Content
</div>
<% loop $Children %>
    <a href="$Link" class="services_wrapper" id="$ID">
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ServicesHolder_infoholder" id="$ID">
            <div class="infoholder_overlay"></div>
            <% if $Glyphicon %>
                <span class="glyphicon glyphicon-$Glyphicon"></span>
            <% end_if %>
            <h2>$Title</h2>
            <button>
                <span>READ MORE</span>
            </button>
        </div>
    </a>
<% end_loop %>