$(document).ready(function () {

    // homepage
    //start carousel
    $('.carousel').carousel({
        interval: 7000
    });
    
    // toggle service_holder_overlay
    $('div.service_holder').each(function () {

        var current_service_holder = $(this);
        var overlay = $('div.service_holder_overlay');

        $(current_service_holder).on('mouseover', function() {
            $(overlay).each(function() {
                if ($(this).attr('id') == current_service_holder.attr('id')) {
                    $(this).stop().fadeIn();
                }
            });
        });
        $(current_service_holder).on('mouseout', function() {
            $(overlay).each(function() {
                if ($(this).attr('id') == current_service_holder.attr('id')) {
                    $(this).stop().fadeOut();
                }
            });
        });

    });
    // homepage contact us slowscroll
    $('.HomePage a.scroll_to_contact').on('click', function() {
        $('html, body').animate({
            scrollTop: $('.contact').offset().top
        }, 1000);
    });
    // img slider

    function showImages() {
        var img = $('.banner_right img');


    }

    showImages();

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
    });
    $('button').on('mouseout', function () {
        $(this).find('div.btn_bground').stop().slideUp();
    });

});