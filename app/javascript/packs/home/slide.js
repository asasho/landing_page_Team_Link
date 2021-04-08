
$(document).ready(function(){
    function toggleChangeBtn() {
        var slideIndex = $('.slide').index($('.active'));
        $('.button').show();
        if(slideIndex == 0){
            $('.prev').hide();
        }else if(slideIndex == $('.slide').length - 1){
            $('.next').hide();
        }
    }

    toggleChangeBtn();

    $('.next').click(function() {
        var $displaySlide = $('.active');
        $displaySlide.removeClass('active');
        $displaySlide.next().addClass('active');
        toggleChangeBtn();
    });
    $('.prev').click(function() {
       var $displaySlide = $('.active');
       $displaySlide.removeClass('active');
       $displaySlide.prev().addClass('active');
       toggleChangeBtn();
    });
});

