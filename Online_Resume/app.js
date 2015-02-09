var activelink = function () {
    $('div.nav ul>li').click(function () {
      

        $(this).children('a').addClass('active');
    });
};


var AboutMeIMGAnimate = function () {
    $('div.About_Me_Links a img').mouseover(function () {

        $(this).animate({
            height: '+=10px',
            width: '+=10px',
        })
    });


    $('div.About_Me_Links a img').mouseout(function () {

        $(this).animate({
            height: '-=10px',
            width: '-=10px',
        })
    });
}

$(document).ready(activelink)
$(document).ready(AboutMeIMGAnimate)





