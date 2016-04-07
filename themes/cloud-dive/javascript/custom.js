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
    $('div.portfolio_holder').each(function() {
        var current_holder = $(this);
        var holder_img = $('img');
        var desc = $('div.desc');

        $(current_holder).on('mouseover', function() {
            $(holder_img).each(function() {
                if ($(this).attr('id') == current_holder.attr('id')) {
                    $(this).stop().animate({'width':'105%'});
                }
            });
            $(desc).each(function() {
                if ($(this).attr('id') == current_holder.attr('id')) {
                    $(this).stop().fadeIn();
                }
            });
        });
        $(current_holder).on('mouseout', function() {
            $(holder_img).each(function() {
                if ($(this).attr('id') == current_holder.attr('id')) {
                    $(this).stop().animate({'width':'100%'});
                }
            });
            $(desc).each(function() {
                if ($(this).attr('id') == current_holder.attr('id')) {
                    $(this).stop().fadeOut();
                }
            });
        });
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