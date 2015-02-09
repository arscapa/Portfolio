var main = function () {
    $('div.nav ul>li').click(function () {
      

        $(this).children('a').addClass('active');
    });
};

$(document).ready(main)