<nav class="navbar navbar-default">
    <div class="container-fluid">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <%--<span class="sr-only"></span>--%>
                <span class="icon-bar" style="background: white;"></span>
                <span class="icon-bar" style="width: 95%; background: white"></span>
                <span class="icon-bar" style="width: 55%; background: white"></span>
                <span class="icon-bar" style="width: 85%; background: white"></span>
            </button>
            <a class="navbar-brand" href="$BaseURL">
                <span class="glyphicon glyphicon-cloud" style="color: white;"></span>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <%--<li class="active"><a href="#">Link<span class="sr-only">(current)</span></a></li>--%>
                <% loop $Menu(1) %>
                    <li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                <% end_loop %>
            </ul>

        </div>
        <!--- search input --->
        <div class="navbar-right">
            <% if $SearchForm %>
                <div class="search-bar">
                    $SearchForm
                    <span class="glyphicon glyphicon-search"></span>
                </div>
            <% end_if %>
        </div>
    </div>
</nav>