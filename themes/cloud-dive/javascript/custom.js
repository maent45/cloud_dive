$(document).ready(function () {

    // homepage services
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
        $(this).find('div.btn_bground').stop().slideDown(400);
        $(this).find('span').css({'position':'relative','z-index':2});
    });
    $('button').on('mouseout', function () {
        $(this).find('div.btn_bground').stop().slideUp(400);
    });


});