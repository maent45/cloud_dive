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

        $(current_holder).on('mouseover', function() {
            var holder_img = $('img');

            $(holder_img).each(function() {
                if ($(this).attr('id') == current_holder.attr('id')) {
                    $(this).stop().animate({'width':'105%'});
                }
            });
        });
        $(current_holder).on('mouseout', function() {
            var holder_img = $('img');

            $(holder_img).each(function() {
                if ($(this).attr('id') == current_holder.attr('id')) {
                    $(this).stop().animate({'width':'100%'});
                }
            });
        });
    });

});