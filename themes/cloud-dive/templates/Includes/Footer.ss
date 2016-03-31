<footer class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="container">
        <div class="col-lg-4">
            <h4>We are a digitally-led creative agency</h4>
        </div>
        <div class="col-lg-4">
            <h4>Get in touch</h4>
        </div>
        <div class="col-lg-4">
            <h4>Our Services</h4>
            <ul>
                <% loop $Menu(1) %>
                <li>
                    <a href="$Link">
                        $Title
                    </a>
                </li>
                <% end_loop %>
            </ul>
        </div>
    </div>
</footer>
