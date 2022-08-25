$(document).ready(function () {
    $('.filter-btn').on('click', function () {
        let type = $(this).attr('id');
        let boxes = $('.project-box');

        $('.main-btn').removeClass('active');
        $(this).addClass('active');

        if (type == 'parrilla-btn') {
            eachBoxes('parrilla', boxes);
        } else if (type == 'bebida-btn') {
            eachBoxes('bebida', boxes);
        } else if (type == 'ensalada-btn') {
            eachBoxes('ensalada', boxes);
        } else if (type == 'pollo-btn') {
            eachBoxes('pollo', boxes);
        } else {
            eachBoxes('todo', boxes);
        }
    });
    function eachBoxes(type, boxes) {
        if (type == 'todo') {
            $(boxes).fadeIn();
        } else {
            $(boxes).each(function () {
                if (!$(this).hasClass(type)) {
                    $(this).fadeOut('slow');
                } else {
                    $(this).fadeIn();
                }
            })
        }
    }
});

