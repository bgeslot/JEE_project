
<!-- ==================================================== -->
<!-- ==================  ANIMATION  ===================== -->
<!-- ==================================================== -->
(function($) {

    // Windows load
    $(window).on("load", function() {
        // Site loader Icon
        
        $(".loader-inner").fadeOut();
        $(".loader").delay(200).fadeOut("slow");
    });


    // Fade the header while we scroll down the page

    var header = $('.header'),
        pos = header.offset(),
        blockTop = $('.block-top');

    $(window).scroll(function() {
        if ($(this).scrollTop() > pos.top + 500 && header.hasClass('default')) {
            header.fadeOut('fast', function() {
                $(this).removeClass('default').addClass('switched-header').fadeIn(200);
                blockTop.addClass('active');
            });
        } else if ($(this).scrollTop() <= pos.top + 500 && header.hasClass('switched-header')) {
            header.fadeOut('fast', function() {
                $(this).removeClass('switched-header').addClass('default').fadeIn(100);
                blockTop.removeClass('active');
            });
        }
    });

})(jQuery);
