$(document).ready(function () {

    // homepage
    //start carousel
    $('.carousel').carousel({
        interval: 5500
    });

    // toggle service_holder_overlay
    $('div.service_holder').on('mouseover', function() {
        $(this).find('div.service_holder_overlay').stop().fadeIn();
    }).on('mouseleave', function() {
        $(this).find('div.service_holder_overlay').stop().fadeOut();
    });

    // homepage contact us slowscroll
    $('.HomePage a.scroll_to_contact').on('click', function() {
        $('html, body').animate({
            scrollTop: $('.contact').offset().top
        }, 1000);
    });

    // portfolio holder
    $('div.portfolio_holder').on('mouseover', function() {
        $(this).find('div.portfolio_holder_overlay').stop().fadeOut();
        $(this).find('button').stop().fadeIn();
        $(this).find('div.desc').show();
        $(this).find('div.desc').stop().animate({
            'bottom':'5px'
        });
    });
    $('div.portfolio_holder').on('mouseout', function() {
        $(this).find('div.portfolio_holder_overlay').stop().fadeIn();
        $(this).find('button').stop().fadeOut();
        $(this).find('div.desc').stop().animate({
            'bottom':'-10px'
        });
    });
    // portfolio page
    $('span.glyphicon-chevron-down').on('click', function() {
        $('html, body').animate({
            scrollTop: $($(this).closest('div').next()).offset().top
        }, 1000);
    }).on('mouseenter', function() {
        $(this).stop().animate({
            'top':'-15px'
        });
    }).on('mouseleave', function() {
        $(this).stop().animate({
            'top':'0px'
        });
    });

    // services holder
    // toggle overlay
    $('a.services_wrapper').on('mouseover', function() {
        $(this).find('button, .infoholder_overlay').stop().fadeIn();
        $(this).find('span, .ServicesHolder_infoholder').css('color','white');
    });
    $('a.services_wrapper').on('mouseout', function() {
        $(this).find('button, .infoholder_overlay').stop().fadeOut();
        $(this).find('span').css('color','#3498DB');
        $(this).find('.ServicesHolder_infoholder').css('color','#555');
    });

    // button overlay toggle
    $('button').on('mouseover', function () {
        $(this).find('div.btn_bground').stop().slideDown();
        $(this).find('span').css({'position':'relative','z-index':2});
    }).on('mouseout', function () {
        $(this).find('div.btn_bground').stop().slideUp();
        //$(this).find('span').css({'color':'#555'});
    });

    // highlight search keyword
    //function highlightSearchTerm() {
    //    var search_term = $('div.search-bar input');
    //    var search_list = $('ul.search_res');
    //    var search_match = $("ul.search_res:contains('search_term.val())");
    //    console.log('SEARCH TERM =',search_term.val());
    //    console.log(search_list.text());
    //
    //    console.log(search_match);

        //if ('search_list:contains(search_term.val())') {
        //    alert('yes');
        //} else {
        //    alert('no');
        //}
    //}

    //highlightSearchTerm();
});